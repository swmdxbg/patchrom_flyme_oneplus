.class Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia$5;
.super Ljava/lang/Object;
.source "PhotoMediaStoreMedia.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->obtainSize(Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia$SizeObtainingTask;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;

.field final synthetic val$task:Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia$SizeObtainingTask;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia$SizeObtainingTask;)V
    .locals 0

    .prologue
    .line 289
    iput-object p1, p0, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia$5;->this$0:Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;

    iput-object p2, p0, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia$5;->val$task:Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia$SizeObtainingTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 293
    iget-object v0, p0, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia$5;->this$0:Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;

    iget-object v1, p0, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia$5;->val$task:Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia$SizeObtainingTask;

    # invokes: Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->onSizeObtained(Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia$SizeObtainingTask;)V
    invoke-static {v0, v1}, Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;->access$400(Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia;Lcom/oneplus/gallery2/media/PhotoMediaStoreMedia$SizeObtainingTask;)V

    .line 294
    return-void
.end method
