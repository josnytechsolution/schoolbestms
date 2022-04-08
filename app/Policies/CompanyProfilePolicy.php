<?php

namespace App\Policies;

use App\User;
use App\CompanyProfile;
use Illuminate\Auth\Access\HandlesAuthorization;

class CompanyProfilePolicy
{
    use HandlesAuthorization;
    
    /**
     * Determine whether the user can view any company profiles.
     *
     * @param  \App\User  $user
     * @return mixed
     */
    public function viewAny(User $user)
    {
        return $user->is_super;
    }

    /**
     * Determine whether the user can view the company profile.
     *
     * @param  \App\User  $user
     * @param  \App\CompanyProfile  $companyProfile
     * @return mixed
     */
    public function view(User $user, CompanyProfile $companyProfile)
    {
        return $user->is_super;
    }

    /**
     * Determine whether the user can create company profiles.
     *
     * @param  \App\User  $user
     * @return mixed
     */
    public function create(User $user)
    {
        return $user->is_super;
    }

    /**
     * Determine whether the user can update the company profile.
     *
     * @param  \App\User  $user
     * @param  \App\CompanyProfile  $companyProfile
     * @return mixed
     */
    public function update(User $user, CompanyProfile $companyProfile)
    {
        return $user->is_super;
    }

    /**
     * Determine whether the user can delete the company profile.
     *
     * @param  \App\User  $user
     * @param  \App\CompanyProfile  $companyProfile
     * @return mixed
     */
    public function delete(User $user, CompanyProfile $companyProfile)
    {
        return $user->is_super;
    }

    /**
     * Determine whether the user can restore the company profile.
     *
     * @param  \App\User  $user
     * @param  \App\CompanyProfile  $companyProfile
     * @return mixed
     */
    public function restore(User $user, CompanyProfile $companyProfile)
    {
        return $user->is_super;
    }

    /**
     * Determine whether the user can permanently delete the company profile.
     *
     * @param  \App\User  $user
     * @param  \App\CompanyProfile  $companyProfile
     * @return mixed
     */
    public function forceDelete(User $user, CompanyProfile $companyProfile)
    {
        return $user->is_super;
    }
}
