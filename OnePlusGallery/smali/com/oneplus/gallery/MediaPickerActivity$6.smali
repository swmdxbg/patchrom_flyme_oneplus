.class Lcom/oneplus/gallery/MediaPickerActivity$6;
.super Ljava/lang/Object;
.source "MediaPickerActivity.java"

# interfaces
.implements Landroid/widget/Toolbar$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery/MediaPickerActivity;->setupUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery/MediaPickerActivity;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/MediaPickerActivity;)V
    .locals 0

    .prologue
    .line 555
    iput-object p1, p0, Lcom/oneplus/gallery/MediaPickerActivity$6;->this$0:Lcom/oneplus/gallery/MediaPickerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 558
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 567
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 561
    :pswitch_0
    iget-object v0, p0, Lcom/oneplus/gallery/MediaPickerActivity$6;->this$0:Lcom/oneplus/gallery/MediaPickerActivity;

    # invokes: Lcom/oneplus/gallery/MediaPickerActivity;->onFinished()V
    invoke-static {v0}, Lcom/oneplus/gallery/MediaPickerActivity;->access$500(Lcom/oneplus/gallery/MediaPickerActivity;)V

    goto :goto_0

    .line 558
    nop

    :pswitch_data_0
    .packed-switch 0x7f0600a5
        :pswitch_0
    .end packed-switch
.end method
