<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class WholeBudget extends Model
{
    protected $fillable = ['id', 'amount', 'year', 'source_of_fund', 'type_of_budget'];

    // Add these to appends so they're always included when serializing
    protected $appends = ['available_amount', 'percentage_used', 'is_fully_allocated'];

    public function budgetAllocations()
    {
        return $this->hasMany(BudgetAllocation::class, 'whole_budget_id');
    }

    /**
     * Get the total amount currently allocated from this whole budget
     * Uses cached relationship sum if available, otherwise queries database
     */
    public function getAllocatedAmountAttribute()
    {
        // Check if we have the sum from withSum() query
        if (isset($this->attributes['budget_allocations_sum_amount'])) {
            return (float) $this->attributes['budget_allocations_sum_amount'];
        }
        
        // Fallback to relationship query if sum not available
        return $this->budgetAllocations()->sum('amount');
    }

    /**
     * Get the remaining available amount from this whole budget
     */
    public function getAvailableAmountAttribute()
    {
        return $this->amount - $this->allocated_amount;
    }

    /**
     * Get the percentage of budget that has been used
     */
    public function getPercentageUsedAttribute()
    {
        if ($this->amount <= 0) {
            return 0;
        }
        return round(($this->allocated_amount / $this->amount) * 100, 2);
    }

    /**
     * Check if the budget is fully allocated
     */
    public function getIsFullyAllocatedAttribute()
    {
        return $this->available_amount <= 0;
    }

    /**
     * Check if a specific amount can be allocated from this budget
     */
    public function canAllocate($amount)
    {
        return $amount <= $this->available_amount;
    }

    /**
     * Get the remaining amount after allocating a specific amount
     */
    public function getRemainingAfterAllocation($amount)
    {
        return $this->available_amount - $amount;
    }

    /**
     * Scope to load budgets with efficient allocation calculations
     */
    public function scopeWithAllocationData($query)
    {
        return $query->withSum('budgetAllocations', 'amount');
    }
}