class LaserTurret extends Rx_Defence_Turret
    placeable;

DefaultProperties
{

//========================================================\\
//*********** Vehicle Seats & Weapon Properties **********\\
//========================================================\\


    Seats(0)={(GunClass=class'LaserTurret_Weapon',
                GunSocket=(MuzzleFlashSocket),
                TurretControls=(TurretPitch,TurretRotate),
                GunPivotPoints=(TurretYaw,TurretPitch),
                CameraTag=CamView3P,
                CameraBaseOffset=(Z=-100),
                CameraOffset=-300,
                SeatIconPos=(X=0.5,Y=0.33),
                MuzzleFlashLightClass=class'Rx_Light_Tank_MuzzleFlash'
                )}


//========================================================\\
//********* Vehicle Material & Effect Properties *********\\
//========================================================\\


    VehicleEffects(0)=(EffectStartTag="MainGun",EffectTemplate=ParticleSystem'RX_WP_LaserRifle.Effects.P_LaserRifle_MuzzleFlash_3P',EffectSocket="MuzzleFlashSocket")

}