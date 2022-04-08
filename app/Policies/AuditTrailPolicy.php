<?php

namespace App\Policies;

use App\User;
use App\AuditTrail;
use Illuminate\Auth\Access\HandlesAuthorization;

class AuditTrailPolicy
{
    use HandlesAuthorization;
    
    /**
     * Determine whether the user can view any audit trails.
     *
     * @param  \App\User  $user
     * @return mixed
     */
    public function viewAny(User $user)
    {
        return $user->is_super;
    }

    /**
     * Determine whether the user can view the audit trail.
     *
     * @param  \App\User  $user
     * @param  \App\AuditTrail  $auditTrail
     * @return mixed
     */
    public function view(User $user, AuditTrail $auditTrail)
    {
        return $user->is_super;
    }

    /**
     * Determine whether the user can create audit trails.
     *
     * @param  \App\User  $user
     * @return mixed
     */
    public function create(User $user)
    {
        return $user->is_super;
    }

    /**
     * Determine whether the user can update the audit trail.
     *
     * @param  \App\User  $user
     * @param  \App\AuditTrail  $auditTrail
     * @return mixed
     */
    public function update(User $user, AuditTrail $auditTrail)
    {
        return $user->is_super;
    }

    /**
     * Determine whether the user can delete the audit trail.
     *
     * @param  \App\User  $user
     * @param  \App\AuditTrail  $auditTrail
     * @return mixed
     */
    public function delete(User $user, AuditTrail $auditTrail)
    {
        return $user->is_super;
    }

    /**
     * Determine whether the user can restore the audit trail.
     *
     * @param  \App\User  $user
     * @param  \App\AuditTrail  $auditTrail
     * @return mixed
     */
    public function restore(User $user, AuditTrail $auditTrail)
    {
        return $user->is_super;
    }

    /**
     * Determine whether the user can permanently delete the audit trail.
     *
     * @param  \App\User  $user
     * @param  \App\AuditTrail  $auditTrail
     * @return mixed
     */
    public function forceDelete(User $user, AuditTrail $auditTrail)
    {
        return $user->is_super;
    }
}
