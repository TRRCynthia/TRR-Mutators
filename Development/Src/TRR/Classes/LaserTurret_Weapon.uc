/*********************************************************
*
* File: Rx_Defence_Turret_Weapon.uc
* Author: RenegadeX-Team
* Pojekt: Renegade-X UDK <www.renegade-x.com>
*
* Desc:
*
*
* ConfigFile:
*
*********************************************************
*
*********************************************************/
class LaserTurret_Weapon extends Rx_Defence_Turret_Weapon;

DefaultProperties
{

    VehicleClass=Class'LaserTurret'

    InstantHitDamage(0)=150
    InstantHitDamage(1)=150
    
    HeadShotDamageMult=2.0 //1.5

    InstantHitDamageTypes(0)=class'DmgType_LaserTurret'
    InstantHitDamageTypes(1)=class'DmgType_LaserTurret'

    InstantHitMomentum(0)=30000
    InstantHitMomentum(1)=30000

    Spread(0)=0.0
    Spread(1)=0.0

    WeaponFireSnd(0)     = SoundCue'RX_WP_Railgun.Sounds.Railgun_FireCue'
    WeaponFireTypes(0)   = EWFT_InstantHit
    WeaponFireSnd(1)     = SoundCue'RX_WP_Railgun.Sounds.Railgun_FireCue'
    WeaponFireTypes(1)   = EWFT_InstantHit
	
	WeaponDistantFireSnd=SoundCue'RX_WP_Railgun.Sounds.SC_Railgun_DistantFire'
  
    bRecommendSplashDamage=False
	
    BeamTemplates[0]=ParticleSystem'RX_FX_Munitions.Beams.P_InstantHit_Tracer_Railgun'
    BeamTemplates_Heroic[0]=ParticleSystem'RX_FX_Munitions.Beams.P_InstantHit_Tracer_Railgun_Heroic'
    BeamTemplates[1]=ParticleSystem'RX_FX_Munitions.Beams.P_InstantHit_Tracer_Railgun'
    BeamTemplates_Heroic[1]=ParticleSystem'RX_FX_Munitions.Beams.P_InstantHit_Tracer_Railgun_Heroic'

    BulletWhip=SoundCue'RX_WP_LaserRifle.Sounds.SC_LaserRifle_WizzBy'
    AltBulletWhip=SoundCue'RX_WP_LaserRifle.Sounds.SC_LaserRifle_WizzBy'

    DefaultImpactEffect=(ParticleTemplate=ParticleSystem'RX_FX_Munitions.Beams.P_Railgun_Impact',Sound=SoundCue'RX_SoundEffects.Explosions.SC_Explosion_Electric')
    DefaultAltImpactEffect=(ParticleTemplate=ParticleSystem'RX_FX_Munitions.Beams.P_Railgun_Impact',Sound=SoundCue'RX_SoundEffects.Explosions.SC_Explosion_Electric')
    DefaultImpactEffect_Heroic=(ParticleTemplate=ParticleSystem'RX_FX_Munitions.Beams.P_Railgun_Impact_Heroic',Sound=SoundCue'RX_SoundEffects.Explosions.SC_Explosion_Electric')
    DefaultAltImpactEffect_Heroic=(ParticleTemplate=ParticleSystem'RX_FX_Munitions.Beams.P_Railgun_Impact_Heroic',Sound=SoundCue'RX_SoundEffects.Explosions.SC_Explosion_Electric')
	
	/****************************************/
	/*Veterancy*/
	/****************************************/

	//*X Reverse percentage (0.75 is 25% increase in speed)
	Vet_ReloadSpeedModifier(0)=1 //Normal (should be 1)
	Vet_ReloadSpeedModifier(1)=0.95 //Veteran 
	Vet_ReloadSpeedModifier(2)=0.90 //Elite
	Vet_ReloadSpeedModifier(3)=0.85 //Heroic
	
	Vet_DamageModifier(0)=1  //Applied to instant-hits only
    Vet_DamageModifier(1)=1.15 //1.10 
    Vet_DamageModifier(2)=1.25 
    Vet_DamageModifier(3)=1.50 
	/********************************/
}
