class CarMeshComponentBase_TA extends SkeletalMeshComponent_TA
native;

var ProductAsset_Body_TA BodyAsset;
var ProductAsset_Skin_TA SkinAsset;
var ProductAsset_Wheel_TA WheelAsset;
var transient LinearColor TeamColorOverride;
var transient LinearColor CustomColorOverride;
var transient int Team;
var transient int TeamColorID;
var transient int CustomColorID;
var transient ProductAsset_Logo_TA Logo;
var transient bool bSwapLogoColors;
var transient bool bBoosting;
var bool bLocalPlayer;
var transient ProductAsset_PaintFinish_TA TeamFinish;
var transient ProductAsset_PaintFinish_TA CustomFinish;
// TODO
//var transient ClubColorSet ClubColors;
var export transient editinline array<AntennaComponent_TA> Antennas;
var export transient editinline array<MeshComponent> WheelMeshes;
var transient FXActor_X BodyFX;
var transient array<FXActor_X> FXActors;
var transient array<AttachmentBehavior_TA> Behaviour;
var transient FXActor_X BodyFXActor;
// TODO
//var transient ClientLoadoutOnlineData ProductAttributes;
var() const array<name> ProductAttachmentSockets;
var transient int QueuedTeamFinishID;
var transient int QueuedCustomFinishID;
//var transient array<InheritedObjects> ObjectsWithInheritedSettings;
//var delegate<EventPaintSettingsUpdated> __EventPaintSettingsUpdated__Delegate;

/*
function __CarMeshComponentBase_TA__InitBodyVisuals (ProductAttachment& A) {}
function __CarMeshComponentBase_TA__CreateWheelMeshes (MeshComponent W) {}
function __CarMeshComponentBase_TA__ApplyPaintSettings (MeshComponent W) {}
function eventApplyColorsToCar (LinearColor& TeamColor, LinearColor& CustomColor) {}
function ApplyPaintSettingsToObject (ProductPaint_TA ProductPaint, ProductAttribute_PaintSettings_TA PaintSettings, Object ObjectToPaint, ProductAsset_TA Asset) {}
function eventApplyPaintToMesh (ProductPaint_TA ProductPaint, ProductAttribute_PaintSettings_TA PaintSettings, Object ObjectToPaint, ProductAsset_TA Product) {}
function SetWheelMesh (MeshComponent MeshComp, ProductAsset_Wheel_TA Asset, unsigned char WheelPos, Name& BoneName, VehicleAxleSettings Axle) {}
function vector CalculatePresetSuspensionOffset () {}
function AFXActor_X AttachFXActor (AFXActor_X FXActorTemplate) {}
function AttachmentBehavior_TA AddBehavior (ProductAsset_TA Asset, ActorComponent Component, AttachmentBehavior_TA BehaviorArchetype) {}
function AddBehaviors (ProductAsset_TA Asset, ActorComponent Component, TArray< AttachmentBehavior_TA > BehaviorArchetypes) {}
function AddCarInheritedObject (Object ObjectToAdd, ProductAsset_TA Asset, ProductAttribute_InheritCarSetting_TA InheritSettingParam, InheritedObjects StructInitializer_E7C5B7834B214289E073C59B5184C1DB) {}
function UpdateInheritedObjects () {}
function AttachOrnament (ProductAsset_TA Asset, ProductAttachment AttachStruct) {}
function SetMaterialColorParams (MaterialInstanceConstant MatInst, LinearColor& PaintColor, Name& ColorParam, Name& FullColorParam) {}
function SetMaterialColors (MaterialInstanceConstant MatInst) {}
function LinearColor GetCorrectedPaintColor (LinearColor& InColor) {}
function SetMeshMaterialColors (MeshComponent Mesh) {}
function CreateWheelMICs () {}
function SetPaintFinishParameters (MeshComponent Mesh) {}
function ApplyPaintSettings () {}
function OnPaintChanged () {}
function ResetMaterials (MeshComponent Mesh) {}
function InitMaterials () {}
function bool FilterTeamAttributes (ProductAttribute_TA Attribute) {}
function ApplyAttributes (ProductAsset_TA Asset, Object Target, TArray< ProductAttribute_TA > ConcatLocal_8652BFB3469DF2F8214DCEAD60BDFE9B, TArray< ProductAttribute_TA > FilterLocal_9ADDD7F24236031B3FCD7488B6455C25) {}
function SetIsLocalPlayer (bool bIsLocal) {}
function LinearColor GetCustomColor () {}
function LinearColor GetTeamColor () {}
function SetLogo (ProductAsset_Logo_TA InLogo, bool bSwapColors) {}
function SetCustomFinish (ProductAsset_PaintFinish_TA Finish) {}
function HandleCustomFinishLoaded (AssetLoadResult& Result) {}
function SetCustomFinishID (int ProductID) {}
function SetCustomColorOverride (LinearColor& NewColor) {}
function SetCustomColorID (int ColorID) {}
function SetTeamFinish (ProductAsset_PaintFinish_TA Finish) {}
function HandleTeamFinishLoaded (AssetLoadResult& Result) {}
function SetTeamFinishID (int ProductID) {}
function SetClubColors (ClubColorSet& Colors) {}
function SetTeamColorOverride (LinearColor& NewColor) {}
function SetTeamColorID (int InTeam, int InColorID) {}
function ClearColorOverrides () {}
function SetTeamPaint (LoadoutTeamPaint& Paint) {}
function eventCreateWheelAttachment (ProductAsset_Wheel_TA Asset, MeshComponent WheelMesh, WheelAttachment& InAttachment) {}
function CreateWheelMesh (ProductAsset_Wheel_TA Asset, unsigned char WheelPos, VehicleAxleSettings& Axle, Name& BoneName) {}
function CreateWheelMeshes () {}
function SetMaterialParameters (int ElementIdx, MaterialParams Params) {}
function eventOnDetached () {}
function InitBodyVisuals () {}
function InitBodyAsset () {}
function AddVisualAsset (ProductAsset_TA Asset) {}
function SetBodyAsset (ProductAsset_Body_TA Body) {}
function eventInitAssets () {}
function EventPaintSettingsUpdated (CarMeshComponentBase_TA CarMeshComponent) {}
*/