
class LaserGT extends Rx_Defence_GuardTower
    placeable;
   
DefaultProperties
{
    TeamID=1;
    Heroic_MuzzleFlash=ParticleSystem'RX_WP_LaserChaingun.Effects.P_LaserChainGun_MuzzleFlash_3P_Blue'
	


//========================================================\\
//*********** Vehicle Seats & Weapon Properties **********\\
//========================================================\\


    Seats(0)={(GunClass=class'LaserGT_Weapon',
                GunSocket=(MuzzleFlashSocket),
                TurretControls=(TurretPitch,TurretRotate),
                GunPivotPoints=(GunYaw,GunPitch),
                CameraTag=CamView3P,
                CameraBaseOffset=(Z=-50),
                CameraOffset=-600,
                SeatIconPos=(X=0.5,Y=0.33),
                MuzzleFlashLightClass=class'RenX_Game.Rx_Light_AutoRifle_MuzzleFlash'
                )}



    RecoilTriggerTag = "MainGun"
    VehicleEffects(0)=(EffectStartTag="MainGun",EffectEndTag="STOP_MainGun",bRestartRunning=false,EffectTemplate=ParticleSystem'RX_WP_LaserChaingun.Effects.P_LaserChainGun_MuzzleFlash_3P',EffectSocket="MuzzleFlashSocket")
    VehicleEffects(1)=(EffectStartTag="MainGun",EffectEndTag="STOP_MainGun",bRestartRunning=false,EffectTemplate=none,EffectSocket="ShellCasingSocket")
    VehicleEffects(2)=(EffectStartTag=DamageSmoke,EffectEndTag=NoDamageSmoke,bRestartRunning=false,EffectTemplate=ParticleSystem'RX_FX_Vehicle.Damage.P_EngineFire_Thick',EffectSocket=DamageSmoke01)

//========================================================\\
//*************** Vehicle Audio Properties ***************\\
//========================================================\\
 
    Begin Object name=FiringmbientSoundComponent
        bShouldRemainActiveIfDropped=true
        bStopWhenOwnerDestroyed=true
        SoundCue=SoundCue'RX_WP_LaserChaingun.Sounds.SC_LaserChainGun_Fire_Loop'
    End Object
    FiringAmbient=FiringmbientSoundComponent
    Components.Add(FiringmbientSoundComponent)
    
    Begin Object name=FiringStopSoundComponent
        bShouldRemainActiveIfDropped=true
        bStopWhenOwnerDestroyed=true
        SoundCue=SoundCue'RX_WP_LaserChaingun.Sounds.SC_LaserChainGun_Fire_Stop'
    End Object
    FiringStopSound=FiringStopSoundComponent
    Components.Add(FiringStopSoundComponent)
    
    //    FiringStopSound=SoundCue'RX_VH_APC_GDI.Sounds.SC_APC_Fire_Stop'

}