class ProductAsset_Attachment_TA extends ProductAsset_TA;

// TODO Probably a in this that I can't see.
//var() array<ProductAttachment> Attachments;
var() name CustomAnimName;

// TODO ProductAttribute_TA
//function ModifyThumbnailMesh (MeshComponent Component, ProductAttachment Attachment, array<ProductAttribute_TA> InAttributes) {}
function SkeletalMeshComponent GetSceneSkeletalMesh (ThumbnailScene_TA Scene, int AttachmentIdx) {}
function StaticMeshComponent GetSceneStaticMesh (ThumbnailScene_TA Scene, int AttachmentIdx) {}
// TODO
//function PrepParticleSystem (SkeletalMeshComponent AttachSKC, ParticleSystemComponent PSC, Name& SocketName, array<ProductAttribute_TA> InAttributes) {}
// TODO
//function HandleAttachedParticleSystem (ParticleSystemComponent ParticleSystemAttachment, SkeletalMeshComponent AttachSKC, StaticMeshComponent AttachSMC, ProductAttachment Attachment, array<ProductAttribute_TA> InAttributes) {}
// TODO
//function HandleAttachedSkeletalMesh (SkeletalMeshComponent AttachSKC, SkeletalMesh InSkeletalMesh, ProductAttachment Attachment, array<ProductAttribute_TA> InAttributes) {}
// TODO
//function HandleAttachedStaticMesh (StaticMeshComponent AttachSMC, StaticMesh InStaticMesh, ProductAttachment Attachment, array<ProductAttribute_TA> InAttributes) {}
// TODO
//event ModifyThumbnailScene (ThumbnailScene_TA Scene, array<ProductAttribute_TA> InAttributes) {}