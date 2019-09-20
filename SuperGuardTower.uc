
class SuperGuardTower extends Rx_Defence_GuardTower
    placeable;
   
DefaultProperties
{
    Seats(0)={(GunClass=class'SuperGuardTower_Weapon',
                GunSocket=(MuzzleFlashSocket),
                TurretControls=(TurretPitch,TurretRotate),
                GunPivotPoints=(GunYaw,GunPitch),
                CameraTag=CamView3P,
                CameraBaseOffset=(Z=-50),
                CameraOffset=-600,
                SeatIconPos=(X=0.5,Y=0.33),
                MuzzleFlashLightClass=class'RenX_Game.Rx_Light_AutoRifle_MuzzleFlash'
                )}

//========================================================\\
//*************** Vehicle Audio Properties ***************\\
//========================================================\\
 
    Begin Object name=FiringmbientSoundComponent
        bShouldRemainActiveIfDropped=true
        bStopWhenOwnerDestroyed=true
        SoundCue=SoundCue'RX_VH_A-10.Sounds.SC_A-10_Gun_Looping'
    End Object
    FiringAmbient=FiringmbientSoundComponent
    Components.Add(FiringmbientSoundComponent)
    
    Begin Object name=FiringStopSoundComponent
        bShouldRemainActiveIfDropped=true
        bStopWhenOwnerDestroyed=true
        SoundCue=SoundCue'RX_VH_A-10.Sounds.SC_A-10_Gun_End'
    End Object
    
    //    FiringStopSound=SoundCue'RX_VH_APC_GDI.Sounds.SC_APC_Fire_Stop'

}