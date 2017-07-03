.class public Lcom/oneplus/gallery/editor/CropEditorMode;
.super Lcom/oneplus/gallery/editor/BaseEditorMode;
.source "CropEditorMode.java"


# instance fields
.field private m_Crop16x9Button:Landroid/widget/ImageButton;

.field private m_Crop16x9ButtonDrawable:Lcom/oneplus/drawable/ShadowTextDrawable;

.field private m_Crop1x1Button:Landroid/widget/ImageButton;

.field private m_Crop1x1ButtonDrawable:Lcom/oneplus/drawable/ShadowTextDrawable;

.field private m_Crop4x3Button:Landroid/widget/ImageButton;

.field private m_Crop4x3ButtonDrawable:Lcom/oneplus/drawable/ShadowTextDrawable;

.field private m_CropButtonContainer:Landroid/view/View;

.field private m_CropFreeButton:Landroid/widget/ImageButton;

.field private m_CropFreeButtonDrawable:Lcom/oneplus/drawable/ShadowTextDrawable;

.field private m_CropModeManager:Lcom/oneplus/gallery/crop/CropModeManager;

.field private m_CropRegionSelector:Lcom/oneplus/gallery/widget/CropRegionSelector;


# direct methods
.method public constructor <init>(Lcom/oneplus/gallery/PhotoEditorFragment;)V
    .locals 3
    .param p1, "fragment"    # Lcom/oneplus/gallery/PhotoEditorFragment;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/editor/BaseEditorMode;-><init>(Lcom/oneplus/gallery/PhotoEditorFragment;)V

    .line 46
    new-instance v0, Lcom/oneplus/gallery/crop/CropModeManager;

    invoke-direct {v0}, Lcom/oneplus/gallery/crop/CropModeManager;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery/editor/CropEditorMode;->m_CropModeManager:Lcom/oneplus/gallery/crop/CropModeManager;

    .line 47
    iget-object v0, p0, Lcom/oneplus/gallery/editor/CropEditorMode;->m_CropModeManager:Lcom/oneplus/gallery/crop/CropModeManager;

    sget-object v1, Lcom/oneplus/gallery/crop/CropModeManager;->PROP_CROP_MODE_TYPE:Lcom/oneplus/base/PropertyKey;

    new-instance v2, Lcom/oneplus/gallery/editor/CropEditorMode$1;

    invoke-direct {v2, p0}, Lcom/oneplus/gallery/editor/CropEditorMode$1;-><init>(Lcom/oneplus/gallery/editor/CropEditorMode;)V

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/gallery/crop/CropModeManager;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 57
    sget-object v0, Lcom/oneplus/gallery/PhotoEditorFragment;->PROP_FIXED_CROP_MODE:Lcom/oneplus/base/PropertyKey;

    new-instance v1, Lcom/oneplus/gallery/editor/CropEditorMode$2;

    invoke-direct {v1, p0}, Lcom/oneplus/gallery/editor/CropEditorMode$2;-><init>(Lcom/oneplus/gallery/editor/CropEditorMode;)V

    invoke-virtual {p1, v0, v1}, Lcom/oneplus/gallery/PhotoEditorFragment;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 65
    sget-object v0, Lcom/oneplus/gallery/PhotoEditorFragment;->PROP_PREVIEW_IMAGE_BOUNDS:Lcom/oneplus/base/PropertyKey;

    new-instance v1, Lcom/oneplus/gallery/editor/CropEditorMode$3;

    invoke-direct {v1, p0}, Lcom/oneplus/gallery/editor/CropEditorMode$3;-><init>(Lcom/oneplus/gallery/editor/CropEditorMode;)V

    invoke-virtual {p1, v0, v1}, Lcom/oneplus/gallery/PhotoEditorFragment;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 73
    sget-object v0, Lcom/oneplus/gallery/PhotoEditorFragment;->PROP_IS_PREVIEW_IMAGE_CONTAINER_ANIMATING:Lcom/oneplus/base/PropertyKey;

    new-instance v1, Lcom/oneplus/gallery/editor/CropEditorMode$4;

    invoke-direct {v1, p0}, Lcom/oneplus/gallery/editor/CropEditorMode$4;-><init>(Lcom/oneplus/gallery/editor/CropEditorMode;)V

    invoke-virtual {p1, v0, v1}, Lcom/oneplus/gallery/PhotoEditorFragment;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 84
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/gallery/editor/CropEditorMode;Lcom/oneplus/gallery/crop/CropModeType;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/editor/CropEditorMode;
    .param p1, "x1"    # Lcom/oneplus/gallery/crop/CropModeType;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/editor/CropEditorMode;->updateCropButtonDrawable(Lcom/oneplus/gallery/crop/CropModeType;)V

    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/gallery/editor/CropEditorMode;Lcom/oneplus/gallery/crop/CropMode;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/editor/CropEditorMode;
    .param p1, "x1"    # Lcom/oneplus/gallery/crop/CropMode;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/editor/CropEditorMode;->updateFixedCropMode(Lcom/oneplus/gallery/crop/CropMode;)V

    return-void
.end method

.method static synthetic access$200(Lcom/oneplus/gallery/editor/CropEditorMode;Landroid/graphics/Rect;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/editor/CropEditorMode;
    .param p1, "x1"    # Landroid/graphics/Rect;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/editor/CropEditorMode;->onPreviewImageBoundsChanged(Landroid/graphics/Rect;)V

    return-void
.end method

.method static synthetic access$300(Lcom/oneplus/gallery/editor/CropEditorMode;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/editor/CropEditorMode;

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/oneplus/gallery/editor/CropEditorMode;->onPaddingAnimationStart()V

    return-void
.end method

.method static synthetic access$400(Lcom/oneplus/gallery/editor/CropEditorMode;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/editor/CropEditorMode;

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/oneplus/gallery/editor/CropEditorMode;->onPaddingAnimationEnd()V

    return-void
.end method

.method static synthetic access$500(Lcom/oneplus/gallery/editor/CropEditorMode;)Lcom/oneplus/gallery/crop/CropModeManager;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/editor/CropEditorMode;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/oneplus/gallery/editor/CropEditorMode;->m_CropModeManager:Lcom/oneplus/gallery/crop/CropModeManager;

    return-object v0
.end method

.method private onPaddingAnimationEnd()V
    .locals 2

    .prologue
    .line 233
    iget-object v0, p0, Lcom/oneplus/gallery/editor/CropEditorMode;->m_CropRegionSelector:Lcom/oneplus/gallery/widget/CropRegionSelector;

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/oneplus/gallery/editor/CropEditorMode;->m_CropRegionSelector:Lcom/oneplus/gallery/widget/CropRegionSelector;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery/widget/CropRegionSelector;->setEnabled(Z)V

    .line 235
    :cond_0
    return-void
.end method

.method private onPaddingAnimationStart()V
    .locals 2

    .prologue
    .line 241
    iget-object v0, p0, Lcom/oneplus/gallery/editor/CropEditorMode;->m_CropRegionSelector:Lcom/oneplus/gallery/widget/CropRegionSelector;

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/oneplus/gallery/editor/CropEditorMode;->m_CropRegionSelector:Lcom/oneplus/gallery/widget/CropRegionSelector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery/widget/CropRegionSelector;->setEnabled(Z)V

    .line 243
    :cond_0
    return-void
.end method

.method private onPreviewImageBoundsChanged(Landroid/graphics/Rect;)V
    .locals 5
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 250
    iget-object v0, p0, Lcom/oneplus/gallery/editor/CropEditorMode;->m_CropRegionSelector:Lcom/oneplus/gallery/widget/CropRegionSelector;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/oneplus/gallery/widget/CropRegionSelector;->setSourceImageBoundsOnWindow(IIII)V

    .line 253
    iget-object v0, p0, Lcom/oneplus/gallery/editor/CropEditorMode;->m_CropRegionSelector:Lcom/oneplus/gallery/widget/CropRegionSelector;

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/oneplus/gallery/editor/CropEditorMode;->m_CropRegionSelector:Lcom/oneplus/gallery/widget/CropRegionSelector;

    invoke-virtual {v0}, Lcom/oneplus/gallery/widget/CropRegionSelector;->invalidate()V

    .line 255
    :cond_0
    return-void
.end method

.method private updateCropButtonDrawable(Lcom/oneplus/gallery/crop/CropModeType;)V
    .locals 5
    .param p1, "modeType"    # Lcom/oneplus/gallery/crop/CropModeType;

    .prologue
    const v2, 0x7f0a0009

    const v3, 0x7f0a0008

    .line 277
    invoke-virtual {p0}, Lcom/oneplus/gallery/editor/CropEditorMode;->getGalleryActivity()Lcom/oneplus/gallery/GalleryActivity;

    move-result-object v0

    .line 278
    .local v0, "galleryActivity":Lcom/oneplus/gallery/GalleryActivity;
    iget-object v1, p0, Lcom/oneplus/gallery/editor/CropEditorMode;->m_CropFreeButtonDrawable:Lcom/oneplus/drawable/ShadowTextDrawable;

    if-eqz v1, :cond_0

    .line 280
    iget-object v4, p0, Lcom/oneplus/gallery/editor/CropEditorMode;->m_CropFreeButtonDrawable:Lcom/oneplus/drawable/ShadowTextDrawable;

    sget-object v1, Lcom/oneplus/gallery/crop/CropModeType;->FREE:Lcom/oneplus/gallery/crop/CropModeType;

    if-ne p1, v1, :cond_4

    move v1, v2

    :goto_0
    invoke-virtual {v4, v0, v1}, Lcom/oneplus/drawable/ShadowTextDrawable;->setTextAppearance(Landroid/content/Context;I)V

    .line 281
    iget-object v1, p0, Lcom/oneplus/gallery/editor/CropEditorMode;->m_CropFreeButtonDrawable:Lcom/oneplus/drawable/ShadowTextDrawable;

    invoke-virtual {v1}, Lcom/oneplus/drawable/ShadowTextDrawable;->invalidateSelf()V

    .line 283
    :cond_0
    iget-object v1, p0, Lcom/oneplus/gallery/editor/CropEditorMode;->m_Crop1x1ButtonDrawable:Lcom/oneplus/drawable/ShadowTextDrawable;

    if-eqz v1, :cond_1

    .line 285
    iget-object v4, p0, Lcom/oneplus/gallery/editor/CropEditorMode;->m_Crop1x1ButtonDrawable:Lcom/oneplus/drawable/ShadowTextDrawable;

    sget-object v1, Lcom/oneplus/gallery/crop/CropModeType;->RATIO_1x1:Lcom/oneplus/gallery/crop/CropModeType;

    if-ne p1, v1, :cond_5

    move v1, v2

    :goto_1
    invoke-virtual {v4, v0, v1}, Lcom/oneplus/drawable/ShadowTextDrawable;->setTextAppearance(Landroid/content/Context;I)V

    .line 286
    iget-object v1, p0, Lcom/oneplus/gallery/editor/CropEditorMode;->m_Crop1x1ButtonDrawable:Lcom/oneplus/drawable/ShadowTextDrawable;

    invoke-virtual {v1}, Lcom/oneplus/drawable/ShadowTextDrawable;->invalidateSelf()V

    .line 288
    :cond_1
    iget-object v1, p0, Lcom/oneplus/gallery/editor/CropEditorMode;->m_Crop4x3ButtonDrawable:Lcom/oneplus/drawable/ShadowTextDrawable;

    if-eqz v1, :cond_2

    .line 290
    iget-object v4, p0, Lcom/oneplus/gallery/editor/CropEditorMode;->m_Crop4x3ButtonDrawable:Lcom/oneplus/drawable/ShadowTextDrawable;

    sget-object v1, Lcom/oneplus/gallery/crop/CropModeType;->RATIO_4x3:Lcom/oneplus/gallery/crop/CropModeType;

    if-ne p1, v1, :cond_6

    move v1, v2

    :goto_2
    invoke-virtual {v4, v0, v1}, Lcom/oneplus/drawable/ShadowTextDrawable;->setTextAppearance(Landroid/content/Context;I)V

    .line 291
    iget-object v1, p0, Lcom/oneplus/gallery/editor/CropEditorMode;->m_Crop4x3ButtonDrawable:Lcom/oneplus/drawable/ShadowTextDrawable;

    invoke-virtual {v1}, Lcom/oneplus/drawable/ShadowTextDrawable;->invalidateSelf()V

    .line 293
    :cond_2
    iget-object v1, p0, Lcom/oneplus/gallery/editor/CropEditorMode;->m_Crop16x9ButtonDrawable:Lcom/oneplus/drawable/ShadowTextDrawable;

    if-eqz v1, :cond_3

    .line 295
    iget-object v1, p0, Lcom/oneplus/gallery/editor/CropEditorMode;->m_Crop16x9ButtonDrawable:Lcom/oneplus/drawable/ShadowTextDrawable;

    sget-object v4, Lcom/oneplus/gallery/crop/CropModeType;->RATIO_16x9:Lcom/oneplus/gallery/crop/CropModeType;

    if-ne p1, v4, :cond_7

    :goto_3
    invoke-virtual {v1, v0, v2}, Lcom/oneplus/drawable/ShadowTextDrawable;->setTextAppearance(Landroid/content/Context;I)V

    .line 296
    iget-object v1, p0, Lcom/oneplus/gallery/editor/CropEditorMode;->m_Crop16x9ButtonDrawable:Lcom/oneplus/drawable/ShadowTextDrawable;

    invoke-virtual {v1}, Lcom/oneplus/drawable/ShadowTextDrawable;->invalidateSelf()V

    .line 298
    :cond_3
    return-void

    :cond_4
    move v1, v3

    .line 280
    goto :goto_0

    :cond_5
    move v1, v3

    .line 285
    goto :goto_1

    :cond_6
    move v1, v3

    .line 290
    goto :goto_2

    :cond_7
    move v2, v3

    .line 295
    goto :goto_3
.end method

.method private updateCropButtonVisibility()V
    .locals 2

    .prologue
    .line 305
    iget-object v0, p0, Lcom/oneplus/gallery/editor/CropEditorMode;->m_CropButtonContainer:Landroid/view/View;

    if-nez v0, :cond_0

    .line 313
    :goto_0
    return-void

    .line 309
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/gallery/editor/CropEditorMode;->getPhotoEditorFragment()Lcom/oneplus/gallery/PhotoEditorFragment;

    move-result-object v0

    sget-object v1, Lcom/oneplus/gallery/PhotoEditorFragment;->PROP_FIXED_CROP_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery/PhotoEditorFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 310
    iget-object v0, p0, Lcom/oneplus/gallery/editor/CropEditorMode;->m_CropButtonContainer:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 312
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery/editor/CropEditorMode;->m_CropButtonContainer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateCropRegionSelectorVisibility()V
    .locals 10

    .prologue
    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    .line 320
    iget-object v4, p0, Lcom/oneplus/gallery/editor/CropEditorMode;->m_CropRegionSelector:Lcom/oneplus/gallery/widget/CropRegionSelector;

    if-nez v4, :cond_0

    .line 352
    :goto_0
    return-void

    .line 322
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/gallery/editor/CropEditorMode;->getPhotoEditor()Lcom/oneplus/gallery/editor/PhotoEditor;

    move-result-object v3

    .line 323
    .local v3, "photoEditor":Lcom/oneplus/gallery/editor/PhotoEditor;
    const/4 v2, 0x1

    .line 324
    .local v2, "isVisible":Z
    if-eqz v3, :cond_1

    sget-object v4, Lcom/oneplus/gallery/editor/MediaEditor;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v3, v4}, Lcom/oneplus/gallery/editor/PhotoEditor;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    sget-object v5, Lcom/oneplus/gallery/editor/MediaEditor$State;->READY:Lcom/oneplus/gallery/editor/MediaEditor$State;

    if-eq v4, v5, :cond_2

    .line 325
    :cond_1
    const/4 v2, 0x0

    .line 326
    :cond_2
    invoke-virtual {p0}, Lcom/oneplus/gallery/editor/CropEditorMode;->isEnter()Z

    move-result v4

    if-nez v4, :cond_3

    .line 327
    const/4 v2, 0x0

    .line 330
    :cond_3
    invoke-virtual {p0}, Lcom/oneplus/gallery/editor/CropEditorMode;->getGalleryActivity()Lcom/oneplus/gallery/GalleryActivity;

    move-result-object v0

    .line 331
    .local v0, "activity":Lcom/oneplus/gallery/GalleryActivity;
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/oneplus/gallery/GalleryActivity;->isServiceMode()Z

    move-result v4

    if-eqz v4, :cond_5

    :cond_4
    const/4 v1, 0x1

    .line 332
    .local v1, "isServiceMode":Z
    :goto_1
    if-eqz v2, :cond_8

    .line 334
    if-nez v1, :cond_7

    .line 336
    iget-object v4, p0, Lcom/oneplus/gallery/editor/CropEditorMode;->m_CropRegionSelector:Lcom/oneplus/gallery/widget/CropRegionSelector;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/oneplus/gallery/widget/CropRegionSelector;->setAlpha(F)V

    .line 337
    iget-object v4, p0, Lcom/oneplus/gallery/editor/CropEditorMode;->m_CropRegionSelector:Lcom/oneplus/gallery/widget/CropRegionSelector;

    invoke-virtual {v4}, Lcom/oneplus/gallery/widget/CropRegionSelector;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    const-wide/16 v8, 0x12c

    invoke-virtual {v4, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    invoke-virtual {p0}, Lcom/oneplus/gallery/editor/CropEditorMode;->isInitialEditorMode()Z

    move-result v4

    if-eqz v4, :cond_6

    const-wide/16 v4, 0x190

    :goto_2
    invoke-virtual {v7, v4, v5}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 345
    :goto_3
    iget-object v4, p0, Lcom/oneplus/gallery/editor/CropEditorMode;->m_CropRegionSelector:Lcom/oneplus/gallery/widget/CropRegionSelector;

    invoke-virtual {v4, v6}, Lcom/oneplus/gallery/widget/CropRegionSelector;->setVisibility(I)V

    goto :goto_0

    .end local v1    # "isServiceMode":Z
    :cond_5
    move v1, v6

    .line 331
    goto :goto_1

    .line 337
    .restart local v1    # "isServiceMode":Z
    :cond_6
    const-wide/16 v4, 0x64

    goto :goto_2

    .line 344
    :cond_7
    iget-object v4, p0, Lcom/oneplus/gallery/editor/CropEditorMode;->m_CropRegionSelector:Lcom/oneplus/gallery/widget/CropRegionSelector;

    invoke-virtual {v4, v7}, Lcom/oneplus/gallery/widget/CropRegionSelector;->setAlpha(F)V

    goto :goto_3

    .line 349
    :cond_8
    iget-object v4, p0, Lcom/oneplus/gallery/editor/CropEditorMode;->m_CropRegionSelector:Lcom/oneplus/gallery/widget/CropRegionSelector;

    invoke-virtual {v4}, Lcom/oneplus/gallery/widget/CropRegionSelector;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 350
    iget-object v4, p0, Lcom/oneplus/gallery/editor/CropEditorMode;->m_CropRegionSelector:Lcom/oneplus/gallery/widget/CropRegionSelector;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Lcom/oneplus/gallery/widget/CropRegionSelector;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateFixedCropMode(Lcom/oneplus/gallery/crop/CropMode;)V
    .locals 3
    .param p1, "cropMode"    # Lcom/oneplus/gallery/crop/CropMode;

    .prologue
    .line 359
    if-eqz p1, :cond_0

    .line 360
    iget-object v0, p0, Lcom/oneplus/gallery/editor/CropEditorMode;->m_CropModeManager:Lcom/oneplus/gallery/crop/CropModeManager;

    sget-object v1, Lcom/oneplus/gallery/crop/CropModeManager;->PROP_CROP_MODE_TYPE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p1}, Lcom/oneplus/gallery/crop/CropMode;->getCropModeType()Lcom/oneplus/gallery/crop/CropModeType;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/gallery/crop/CropModeManager;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 367
    :goto_0
    invoke-direct {p0}, Lcom/oneplus/gallery/editor/CropEditorMode;->updateCropButtonVisibility()V

    .line 368
    return-void

    .line 361
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery/editor/CropEditorMode;->m_CropFreeButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    .line 362
    iget-object v0, p0, Lcom/oneplus/gallery/editor/CropEditorMode;->m_CropFreeButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->performClick()Z

    goto :goto_0

    .line 364
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery/editor/CropEditorMode;->m_CropModeManager:Lcom/oneplus/gallery/crop/CropModeManager;

    sget-object v1, Lcom/oneplus/gallery/crop/CropModeManager;->PROP_CROP_MODE_TYPE:Lcom/oneplus/base/PropertyKey;

    sget-object v2, Lcom/oneplus/gallery/crop/CropModeType;->FREE:Lcom/oneplus/gallery/crop/CropModeType;

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/gallery/crop/CropModeManager;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method protected onCreateUI(Landroid/view/View;)Landroid/view/View;
    .locals 5
    .param p1, "parent"    # Landroid/view/View;

    .prologue
    const v4, 0x7f0a0008

    .line 92
    invoke-virtual {p0}, Lcom/oneplus/gallery/editor/CropEditorMode;->getGalleryActivity()Lcom/oneplus/gallery/GalleryActivity;

    move-result-object v1

    .line 93
    .local v1, "galleryActivity":Lcom/oneplus/gallery/GalleryActivity;
    const v3, 0x7f03001e

    move-object v2, p1

    check-cast v2, Landroid/view/ViewGroup;

    invoke-static {v1, v3, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 96
    const v2, 0x7f060084

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 97
    .local v0, "baseView":Landroid/view/View;
    const v2, 0x7f060085

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/oneplus/gallery/widget/CropRegionSelector;

    iput-object v2, p0, Lcom/oneplus/gallery/editor/CropEditorMode;->m_CropRegionSelector:Lcom/oneplus/gallery/widget/CropRegionSelector;

    .line 98
    const v2, 0x7f060086

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/gallery/editor/CropEditorMode;->m_CropButtonContainer:Landroid/view/View;

    .line 99
    const v2, 0x7f060087

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/oneplus/gallery/editor/CropEditorMode;->m_CropFreeButton:Landroid/widget/ImageButton;

    .line 100
    const v2, 0x7f060089

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/oneplus/gallery/editor/CropEditorMode;->m_Crop1x1Button:Landroid/widget/ImageButton;

    .line 101
    const v2, 0x7f060088

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/oneplus/gallery/editor/CropEditorMode;->m_Crop4x3Button:Landroid/widget/ImageButton;

    .line 102
    const v2, 0x7f06008a

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/oneplus/gallery/editor/CropEditorMode;->m_Crop16x9Button:Landroid/widget/ImageButton;

    .line 105
    iget-object v2, p0, Lcom/oneplus/gallery/editor/CropEditorMode;->m_CropRegionSelector:Lcom/oneplus/gallery/widget/CropRegionSelector;

    invoke-virtual {p0}, Lcom/oneplus/gallery/editor/CropEditorMode;->getPhotoEditor()Lcom/oneplus/gallery/editor/PhotoEditor;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/oneplus/gallery/widget/CropRegionSelector;->setPhotoEditor(Lcom/oneplus/gallery/editor/PhotoEditor;)V

    .line 106
    iget-object v2, p0, Lcom/oneplus/gallery/editor/CropEditorMode;->m_CropRegionSelector:Lcom/oneplus/gallery/widget/CropRegionSelector;

    iget-object v3, p0, Lcom/oneplus/gallery/editor/CropEditorMode;->m_CropModeManager:Lcom/oneplus/gallery/crop/CropModeManager;

    invoke-virtual {v2, v3}, Lcom/oneplus/gallery/widget/CropRegionSelector;->setCropModeManager(Lcom/oneplus/gallery/crop/CropModeManager;)V

    .line 107
    iget-object v2, p0, Lcom/oneplus/gallery/editor/CropEditorMode;->m_CropRegionSelector:Lcom/oneplus/gallery/widget/CropRegionSelector;

    new-instance v3, Lcom/oneplus/gallery/editor/CropEditorMode$5;

    invoke-direct {v3, p0}, Lcom/oneplus/gallery/editor/CropEditorMode$5;-><init>(Lcom/oneplus/gallery/editor/CropEditorMode;)V

    invoke-virtual {v2, v3}, Lcom/oneplus/gallery/widget/CropRegionSelector;->setOnCropRectChangeListener(Lcom/oneplus/gallery/widget/CropRegionSelector$OnCropRectChangeListener;)V

    .line 117
    new-instance v2, Lcom/oneplus/drawable/ShadowTextDrawable;

    const v3, 0x7f090017

    invoke-virtual {v1, v3}, Lcom/oneplus/gallery/GalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/oneplus/drawable/ShadowTextDrawable;-><init>(Ljava/lang/CharSequence;)V

    iput-object v2, p0, Lcom/oneplus/gallery/editor/CropEditorMode;->m_CropFreeButtonDrawable:Lcom/oneplus/drawable/ShadowTextDrawable;

    .line 118
    iget-object v2, p0, Lcom/oneplus/gallery/editor/CropEditorMode;->m_CropFreeButtonDrawable:Lcom/oneplus/drawable/ShadowTextDrawable;

    invoke-virtual {v2, v1, v4}, Lcom/oneplus/drawable/ShadowTextDrawable;->setTextAppearance(Landroid/content/Context;I)V

    .line 119
    iget-object v2, p0, Lcom/oneplus/gallery/editor/CropEditorMode;->m_CropFreeButton:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/oneplus/gallery/editor/CropEditorMode;->m_CropFreeButtonDrawable:Lcom/oneplus/drawable/ShadowTextDrawable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 120
    iget-object v2, p0, Lcom/oneplus/gallery/editor/CropEditorMode;->m_CropFreeButton:Landroid/widget/ImageButton;

    new-instance v3, Lcom/oneplus/gallery/editor/CropEditorMode$6;

    invoke-direct {v3, p0}, Lcom/oneplus/gallery/editor/CropEditorMode$6;-><init>(Lcom/oneplus/gallery/editor/CropEditorMode;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    new-instance v2, Lcom/oneplus/drawable/ShadowTextDrawable;

    const v3, 0x7f090018

    invoke-virtual {v1, v3}, Lcom/oneplus/gallery/GalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/oneplus/drawable/ShadowTextDrawable;-><init>(Ljava/lang/CharSequence;)V

    iput-object v2, p0, Lcom/oneplus/gallery/editor/CropEditorMode;->m_Crop1x1ButtonDrawable:Lcom/oneplus/drawable/ShadowTextDrawable;

    .line 129
    iget-object v2, p0, Lcom/oneplus/gallery/editor/CropEditorMode;->m_Crop1x1ButtonDrawable:Lcom/oneplus/drawable/ShadowTextDrawable;

    invoke-virtual {v2, v1, v4}, Lcom/oneplus/drawable/ShadowTextDrawable;->setTextAppearance(Landroid/content/Context;I)V

    .line 130
    iget-object v2, p0, Lcom/oneplus/gallery/editor/CropEditorMode;->m_Crop1x1Button:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/oneplus/gallery/editor/CropEditorMode;->m_Crop1x1ButtonDrawable:Lcom/oneplus/drawable/ShadowTextDrawable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 131
    iget-object v2, p0, Lcom/oneplus/gallery/editor/CropEditorMode;->m_Crop1x1Button:Landroid/widget/ImageButton;

    new-instance v3, Lcom/oneplus/gallery/editor/CropEditorMode$7;

    invoke-direct {v3, p0}, Lcom/oneplus/gallery/editor/CropEditorMode$7;-><init>(Lcom/oneplus/gallery/editor/CropEditorMode;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    new-instance v2, Lcom/oneplus/drawable/ShadowTextDrawable;

    const v3, 0x7f090019

    invoke-virtual {v1, v3}, Lcom/oneplus/gallery/GalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/oneplus/drawable/ShadowTextDrawable;-><init>(Ljava/lang/CharSequence;)V

    iput-object v2, p0, Lcom/oneplus/gallery/editor/CropEditorMode;->m_Crop4x3ButtonDrawable:Lcom/oneplus/drawable/ShadowTextDrawable;

    .line 140
    iget-object v2, p0, Lcom/oneplus/gallery/editor/CropEditorMode;->m_Crop4x3ButtonDrawable:Lcom/oneplus/drawable/ShadowTextDrawable;

    invoke-virtual {v2, v1, v4}, Lcom/oneplus/drawable/ShadowTextDrawable;->setTextAppearance(Landroid/content/Context;I)V

    .line 141
    iget-object v2, p0, Lcom/oneplus/gallery/editor/CropEditorMode;->m_Crop4x3Button:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/oneplus/gallery/editor/CropEditorMode;->m_Crop4x3ButtonDrawable:Lcom/oneplus/drawable/ShadowTextDrawable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 142
    iget-object v2, p0, Lcom/oneplus/gallery/editor/CropEditorMode;->m_Crop4x3Button:Landroid/widget/ImageButton;

    new-instance v3, Lcom/oneplus/gallery/editor/CropEditorMode$8;

    invoke-direct {v3, p0}, Lcom/oneplus/gallery/editor/CropEditorMode$8;-><init>(Lcom/oneplus/gallery/editor/CropEditorMode;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    new-instance v2, Lcom/oneplus/drawable/ShadowTextDrawable;

    const v3, 0x7f09001a

    invoke-virtual {v1, v3}, Lcom/oneplus/gallery/GalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/oneplus/drawable/ShadowTextDrawable;-><init>(Ljava/lang/CharSequence;)V

    iput-object v2, p0, Lcom/oneplus/gallery/editor/CropEditorMode;->m_Crop16x9ButtonDrawable:Lcom/oneplus/drawable/ShadowTextDrawable;

    .line 151
    iget-object v2, p0, Lcom/oneplus/gallery/editor/CropEditorMode;->m_Crop16x9ButtonDrawable:Lcom/oneplus/drawable/ShadowTextDrawable;

    invoke-virtual {v2, v1, v4}, Lcom/oneplus/drawable/ShadowTextDrawable;->setTextAppearance(Landroid/content/Context;I)V

    .line 152
    iget-object v2, p0, Lcom/oneplus/gallery/editor/CropEditorMode;->m_Crop16x9Button:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/oneplus/gallery/editor/CropEditorMode;->m_Crop16x9ButtonDrawable:Lcom/oneplus/drawable/ShadowTextDrawable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 153
    iget-object v2, p0, Lcom/oneplus/gallery/editor/CropEditorMode;->m_Crop16x9Button:Landroid/widget/ImageButton;

    new-instance v3, Lcom/oneplus/gallery/editor/CropEditorMode$9;

    invoke-direct {v3, p0}, Lcom/oneplus/gallery/editor/CropEditorMode$9;-><init>(Lcom/oneplus/gallery/editor/CropEditorMode;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    invoke-direct {p0}, Lcom/oneplus/gallery/editor/CropEditorMode;->updateCropButtonVisibility()V

    .line 166
    return-object v0
.end method

.method protected onDestroyUI()V
    .locals 0

    .prologue
    .line 174
    return-void
.end method

.method protected onEditorOrientationChanged(I)V
    .locals 3
    .param p1, "orientation"    # I

    .prologue
    .line 182
    invoke-super {p0, p1}, Lcom/oneplus/gallery/editor/BaseEditorMode;->onEditorOrientationChanged(I)V

    .line 185
    iget-object v0, p0, Lcom/oneplus/gallery/editor/CropEditorMode;->m_CropModeManager:Lcom/oneplus/gallery/crop/CropModeManager;

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/oneplus/gallery/editor/CropEditorMode;->m_CropModeManager:Lcom/oneplus/gallery/crop/CropModeManager;

    sget-object v1, Lcom/oneplus/gallery/crop/CropModeManager;->PROP_CROP_MODE_TYPE:Lcom/oneplus/base/PropertyKey;

    sget-object v2, Lcom/oneplus/gallery/crop/CropModeType;->FREE:Lcom/oneplus/gallery/crop/CropModeType;

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/gallery/crop/CropModeManager;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 187
    :cond_0
    return-void
.end method

.method protected onEnter(I)Z
    .locals 3
    .param p1, "flags"    # I

    .prologue
    .line 195
    invoke-virtual {p0}, Lcom/oneplus/gallery/editor/CropEditorMode;->getPhotoEditor()Lcom/oneplus/gallery/editor/PhotoEditor;

    move-result-object v0

    sget-object v1, Lcom/oneplus/gallery/editor/PhotoEditor;->PROP_SHOW_CLIPPED_PREVIEW:Lcom/oneplus/base/PropertyKey;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/gallery/editor/PhotoEditor;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 198
    invoke-direct {p0}, Lcom/oneplus/gallery/editor/CropEditorMode;->updateCropRegionSelectorVisibility()V

    .line 201
    const/4 v0, 0x1

    return v0
.end method

.method protected onExit(I)V
    .locals 3
    .param p1, "flags"    # I

    .prologue
    .line 210
    invoke-virtual {p0}, Lcom/oneplus/gallery/editor/CropEditorMode;->getPhotoEditor()Lcom/oneplus/gallery/editor/PhotoEditor;

    move-result-object v0

    sget-object v1, Lcom/oneplus/gallery/editor/PhotoEditor;->PROP_SHOW_CLIPPED_PREVIEW:Lcom/oneplus/base/PropertyKey;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/gallery/editor/PhotoEditor;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 213
    invoke-direct {p0}, Lcom/oneplus/gallery/editor/CropEditorMode;->updateCropRegionSelectorVisibility()V

    .line 214
    return-void
.end method

.method protected onFragmentResuming()V
    .locals 4

    .prologue
    .line 222
    invoke-super {p0}, Lcom/oneplus/gallery/editor/BaseEditorMode;->onFragmentResuming()V

    .line 225
    iget-object v0, p0, Lcom/oneplus/gallery/editor/CropEditorMode;->m_CropModeManager:Lcom/oneplus/gallery/crop/CropModeManager;

    sget-object v1, Lcom/oneplus/gallery/crop/CropModeManager;->PROP_CROP_MODE_TYPE:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/oneplus/gallery/editor/CropEditorMode;->m_CropModeManager:Lcom/oneplus/gallery/crop/CropModeManager;

    sget-object v3, Lcom/oneplus/gallery/crop/CropModeManager;->PROP_CROP_MODE_TYPE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v2, v3}, Lcom/oneplus/gallery/crop/CropModeManager;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/gallery/crop/CropModeManager;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 226
    iget-object v0, p0, Lcom/oneplus/gallery/editor/CropEditorMode;->m_CropModeManager:Lcom/oneplus/gallery/crop/CropModeManager;

    sget-object v1, Lcom/oneplus/gallery/crop/CropModeManager;->PROP_CROP_MODE_TYPE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery/crop/CropModeManager;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/crop/CropModeType;

    invoke-direct {p0, v0}, Lcom/oneplus/gallery/editor/CropEditorMode;->updateCropButtonDrawable(Lcom/oneplus/gallery/crop/CropModeType;)V

    .line 227
    return-void
.end method

.method protected onRelease()V
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/oneplus/gallery/editor/CropEditorMode;->m_CropRegionSelector:Lcom/oneplus/gallery/widget/CropRegionSelector;

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/oneplus/gallery/editor/CropEditorMode;->m_CropRegionSelector:Lcom/oneplus/gallery/widget/CropRegionSelector;

    invoke-virtual {v0}, Lcom/oneplus/gallery/widget/CropRegionSelector;->release()V

    .line 266
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/gallery/editor/CropEditorMode;->m_CropRegionSelector:Lcom/oneplus/gallery/widget/CropRegionSelector;

    .line 270
    :cond_0
    invoke-super {p0}, Lcom/oneplus/gallery/editor/BaseEditorMode;->onRelease()V

    .line 271
    return-void
.end method
