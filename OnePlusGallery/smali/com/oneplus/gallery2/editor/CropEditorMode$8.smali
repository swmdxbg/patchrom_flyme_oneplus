.class Lcom/oneplus/gallery2/editor/CropEditorMode$8;
.super Ljava/lang/Object;
.source "CropEditorMode.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery2/editor/CropEditorMode;->onCreateUI(Landroid/view/View;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery2/editor/CropEditorMode;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/editor/CropEditorMode;)V
    .locals 0

    .prologue
    .line 143
    iput-object p1, p0, Lcom/oneplus/gallery2/editor/CropEditorMode$8;->this$0:Lcom/oneplus/gallery2/editor/CropEditorMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 147
    iget-object v0, p0, Lcom/oneplus/gallery2/editor/CropEditorMode$8;->this$0:Lcom/oneplus/gallery2/editor/CropEditorMode;

    # getter for: Lcom/oneplus/gallery2/editor/CropEditorMode;->m_CropModeManager:Lcom/oneplus/gallery/crop/CropModeManager;
    invoke-static {v0}, Lcom/oneplus/gallery2/editor/CropEditorMode;->access$500(Lcom/oneplus/gallery2/editor/CropEditorMode;)Lcom/oneplus/gallery/crop/CropModeManager;

    move-result-object v0

    sget-object v1, Lcom/oneplus/gallery/crop/CropModeManager;->PROP_CROP_MODE_TYPE:Lcom/oneplus/base/PropertyKey;

    sget-object v2, Lcom/oneplus/gallery/crop/CropModeType;->RATIO_4x3:Lcom/oneplus/gallery/crop/CropModeType;

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/gallery/crop/CropModeManager;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 148
    return-void
.end method
