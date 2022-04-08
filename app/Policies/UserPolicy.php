<?php

namespace App\Policies;

use App\User;
use App\SystemUser;
use Illuminate\Auth\Access\HandlesAuthorization;

class UserPolicy
{
    use HandlesAuthorization;
    
    /**
     * Determine whether the user can view any system users.
     *
     * @param  \App\User  $user
     * @return mixed
     */
    public function viewAny(User $user)
    {
        return $user->is_super;
    }

    /**
     * Determine whether the user can view the system user.
     *
     * @param  \App\User  $user
     * @param  \App\SystemUser  $systemUser
     * @return mixed
     */
    public function view(User $user, SystemUser $systemUser)
    {
        return $user->is_super;
    }

    /**
     * Determine whether the user can create system users.
     *
     * @param  \App\User  $user
     * @return mixed
     */
    public function create(User $user)
    {
        return $user->is_super;
    }

    /**
     * Determine whether the user can update the system user.
     *
     * @param  \App\User  $user
     * @param  \App\SystemUser  $systemUser
     * @return mixed
     */
    public function update(User $user, SystemUser $systemUser)
    {
        return $user->is_super;
    }

    /**
     * Determine whether the user can delete the system user.
     *
     * @param  \App\User  $user
     * @param  \App\SystemUser  $systemUser
     * @return mixed
     */
    public function delete(User $user, SystemUser $systemUser)
    {
        return $user->is_super;
    }

    /**
     * Determine whether the user can restore the system user.
     *
     * @param  \App\User  $user
     * @param  \App\SystemUser  $systemUser
     * @return mixed
     */
    public function restore(User $user, SystemUser $systemUser)
    {
        return $user->is_super;
    }

    /**
     * Determine whether the user can permanently delete the system user.
     *
     * @param  \App\User  $user
     * @param  \App\SystemUser  $systemUser
     * @return mixed
     */
    public function forceDelete(User $user, SystemUser $systemUser)
    {
        return $user->is_super;
    }
}
