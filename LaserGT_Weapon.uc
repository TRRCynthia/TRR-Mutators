
class LaserGT_Weapon extends Rx_Defence_GuardTower_Weapon;

DefaultProperties
{
    ClipSize = 100

    VehicleClass=Class'LaserGT'

    FireInterval(0)=+0.1
    FireInterval(1)=+0.1

    Spread(0)=0.0045
    Spread(1)=0.0045
	
	InstantHitDamage(0)=16
	InstantHitDamage(1)=16
	
	HeadShotDamageMult= 1.4

	InstantHitDamageTypes(0)=class'DmgType_LaserGT'
	InstantHitDamageTypes(1)=class'DmgType_LaserGT'

	InstantHitMomentum(0)=10000
	InstantHitMomentum(1)=10000

	bInstantHit=true

	WeaponRange=6000.0
 	FireSocket="MuzzleFlashSocket"

//	BeamTemplate = ParticleSystem'RX_WP_LaserChaingun.Effects.P_LaserRifle_Beam'
//	BeamTemplate_Heroic	= ParticleSystem'RX_WP_LaserChaingun.Effects.P_LaserRifle_Beam_Blue'

	BeamTemplates[0]=ParticleSystem'RX_WP_LaserRifle.Effects.P_LaserRifle_Beam'
	BeamTemplates_Heroic[0]= ParticleSystem'RX_WP_LaserRifle.Effects.P_LaserRifle_Beam_Blue'
	BeamTemplates[1]=ParticleSystem'RX_WP_LaserRifle.Effects.P_LaserRifle_Beam'
	BeamTemplates_Heroic[1]= ParticleSystem'RX_WP_LaserRifle.Effects.P_LaserRifle_Beam_Blue'

    BulletWhip=SoundCue'RX_WP_LaserRifle.Sounds.SC_LaserRifle_WizzBy'
    AltBulletWhip=SoundCue'RX_WP_LaserRifle.Sounds.SC_LaserRifle_WizzBy'

	DefaultImpactEffect=(ParticleTemplate=ParticleSystem'RX_WP_LaserRifle.Effects.P_Laser_Impact',Sound=SoundCue'RX_WP_LaserRifle.Sounds.SC_LaserRifle_Impact')
	DefaultImpactEffect_Heroic=(ParticleTemplate=ParticleSystem'RX_WP_LaserRifle.Effects.P_Laser_Impact_Blue',Sound=SoundCue'RX_WP_LaserRifle.Sounds.SC_LaserRifle_Impact')
	DefaultAltImpactEffect=(ParticleTemplate=ParticleSystem'RX_WP_LaserRifle.Effects.P_Laser_Impact',Sound=SoundCue'RX_WP_LaserRifle.Sounds.SC_LaserRifle_Impact')
	DefaultAltImpactEffect_Heroic=(ParticleTemplate=ParticleSystem'RX_WP_LaserRifle.Effects.P_Laser_Impact_Blue',Sound=SoundCue'RX_WP_LaserRifle.Sounds.SC_LaserRifle_Impact')

    MuzzleFlashSocket="MuzzleFlashSocket"
    MuzzleFlashPSCTemplate=ParticleSystem'RX_WP_LaserChaingun.Effects.P_LaserChainGun_MuzzleFlash_3P'
	MuzzleFlashPSCTemplate_Heroic=ParticleSystem'RX_WP_LaserChaingun.Effects.P_LaserChainGun_MuzzleFlash_3P_Blue'
    MuzzleFlashDuration=3.3667
	
	
	WeaponFireTypes(0)=EWFT_InstantHit
	WeaponFireTypes(1)=EWFT_InstantHit
	
	Vet_DamageModifier(0)=1  //Applied to instant-hits only
	Vet_DamageModifier(1)=1.10 
	Vet_DamageModifier(2)=1.25 
	Vet_DamageModifier(3)=1.50 
	
	Vet_ROFModifier(0) = 1
	Vet_ROFModifier(1) = 0.95 
	Vet_ROFModifier(2) = 0.90  
	Vet_ROFModifier(3) = 0.85  
	
	Vet_ClipSizeModifier(0)=0 //Normal (should be 1)	
	Vet_ClipSizeModifier(1)=10 //Veteran 
	Vet_ClipSizeModifier(2)=25 //Elite
	Vet_ClipSizeModifier(3)=50 //Heroic

	bLocSync = true; 
	LocSyncIncrement = 30; 

}
