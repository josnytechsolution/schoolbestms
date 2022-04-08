<?php

namespace App\Policies;

use App\User;
use App\CurrentSession;
use Illuminate\Auth\Access\HandlesAuthorization;

class CurrentSessionPolicy
{
    use HandlesAuthorization;
    
    /**
     * Determine whether the user can view any current sessions.
     *
     * @param  \App\User  $user
     * @return mixed
     */
    public function viewAny(User $user)
    {
        return $user->is_super;
    }

    /**
     * Determine whether the user can view the current session.
     *
     * @param  \App\User  $user
     * @param  \App\CurrentSession  $currentSession
     * @return mixed
     */
    public function view(User $user, CurrentSession $currentSession)
    {
        return $user->is_super;
    }

    /**
     * Determine whether the user can create current sessions.
     *
     * @param  \App\User  $user
     * @return mixed
     */
    public function create(User $user)
    {
        return $user->is_super;
    }

    /**
     * Determine whether the user can update the current session.
     *
     * @param  \App\User  $user
     * @param  \App\CurrentSession  $currentSession
     * @return mixed
     */
    public function update(User $user, CurrentSession $currentSession)
    {
        return $user->is_super;
    }

    /**
     * Determine whether the user can delete the current session.
     *
     * @param  \App\User  $user
     * @param  \App\CurrentSession  $currentSession
     * @return mixed
     */
    public function delete(User $user, CurrentSession $currentSession)
    {
        return $user->is_super;
    }

    /**
     * Determine whether the user can restore the current session.
     *
     * @param  \App\User  $user
     * @param  \App\CurrentSession  $currentSession
     * @return mixed
     */
    public function restore(User $user, CurrentSession $currentSession)
    {
        return $user->is_super;
    }

    /**
     * Determine whether the user can permanently delete the current session.
     *
     * @param  \App\User  $user
     * @param  \App\CurrentSession  $currentSession
     * @return mixed
     */
    public function forceDelete(User $user, CurrentSession $currentSession)
    {
        return $user->is_super;
    }
}
