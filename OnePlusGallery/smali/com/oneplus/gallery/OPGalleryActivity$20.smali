.class Lcom/oneplus/gallery/OPGalleryActivity$20;
.super Ljava/lang/Object;
.source "OPGalleryActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery/OPGalleryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery/OPGalleryActivity;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/OPGalleryActivity;)V
    .locals 0

    .prologue
    .line 352
    iput-object p1, p0, Lcom/oneplus/gallery/OPGalleryActivity$20;->this$0:Lcom/oneplus/gallery/OPGalleryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 356
    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity$20;->this$0:Lcom/oneplus/gallery/OPGalleryActivity;

    # invokes: Lcom/oneplus/gallery/OPGalleryActivity;->onGridViewOpened()V
    invoke-static {v0}, Lcom/oneplus/gallery/OPGalleryActivity;->access$2300(Lcom/oneplus/gallery/OPGalleryActivity;)V

    .line 357
    return-void
.end method
