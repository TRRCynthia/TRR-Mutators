//=============================================================================
// Ordinary rapid-fire, instant-hit weapon.
// http://mrevil.pwp.blueyonder.co.uk/unreal/
//=============================================================================
class Rx_SentinelWeapon_AGT_RocketPod_Desolation extends Rx_SentinelWeapon_AGT_RocketPod;


/**
 * Fires a projectile.
 * Spawns the projectile, but also increment the flash count for remote client effects.
 * Network: Local Player and Server
 */
function ProjectileFire()
{
    local vector                RealStartLoc;
    local Rx_Projectile_Rocket_AGT            SpawnedProjectile;
    local Rotator               Aim;
    local Vector                FireSoundLocation;

    if( Role == ROLE_Authority )
    {
        // this is the location where the projectile is spawned.
        if(currentMuzzleflashNumber == 0) {
            RealStartLoc = MuzzleFlash1.GetPosition();
            currentMuzzleflashNumber = 1;
            Cannon.WeaponComponent.GetSocketWorldLocationAndRotation(MuzzleSocketName, FireSoundLocation);
        } else {
            RealStartLoc = MuzzleFlash2.GetPosition();
            currentMuzzleflashNumber = 0;
            Cannon.WeaponComponent.GetSocketWorldLocationAndRotation(MuzzleSocketName2, FireSoundLocation);
        }
        //FlashMuzzleFlash();

        // Spawn projectile
        Aim = Cannon.CurrentAim;
        Aim.Pitch = 0;
        //SpawnedProjectile = Spawn(class'UTProj_SeekingRocket',,, RealStartLoc, Aim,,true);
        SpawnedProjectile = Spawn(class'Rx_Projectile_Rocket_AGT_Desolation',,, RealStartLoc, Aim,,true);
        SpawnedProjectile.InitialDir = vector(Aim);
        if ( SpawnedProjectile != None )
        {
            SpawnedProjectile.Init(vector(Aim));
            SpawnedProjectile.SeekTarget = Cannon.Target;
        }
        //SpawnedProjectile.InitialDir=Aim;
        
    }
}
