.class Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimatorRestoreListener;
.super Ljava/lang/Object;
.source "RecyclerView.java"

# interfaces
.implements Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator$ItemAnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/widget/recyclerview/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ItemAnimatorRestoreListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;


# direct methods
.method private constructor <init>(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    .prologue
    .line 9679
    iput-object p1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimatorRestoreListener;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimatorRestoreListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimatorRestoreListener;-><init>(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)V

    return-void
.end method


# virtual methods
.method public onAddFinished(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V
    .locals 2
    .param p1, "item"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .prologue
    .line 9691
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    .line 9692
    invoke-static {p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->-wrap1(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 9693
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimatorRestoreListener;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    iget-object v1, p1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->-wrap1(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Landroid/view/View;)Z

    .line 9690
    :cond_0
    return-void
.end method

.method public onChangeFinished(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V
    .locals 3
    .param p1, "item"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .prologue
    const/4 v2, 0x0

    .line 9707
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    .line 9735
    iget-object v0, p1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mShadowedHolder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mShadowingHolder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    if-nez v0, :cond_0

    .line 9736
    iput-object v2, p1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mShadowedHolder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .line 9737
    invoke-static {p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->-get0(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)I

    move-result v0

    const/16 v1, -0x41

    invoke-virtual {p1, v1, v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->setFlags(II)V

    .line 9741
    :cond_0
    iput-object v2, p1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mShadowingHolder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .line 9742
    invoke-static {p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->-wrap1(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 9743
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimatorRestoreListener;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    iget-object v1, p1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->-wrap1(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Landroid/view/View;)Z

    .line 9706
    :cond_1
    return-void
.end method

.method public onMoveFinished(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V
    .locals 2
    .param p1, "item"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .prologue
    .line 9699
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    .line 9700
    invoke-static {p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->-wrap1(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 9701
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimatorRestoreListener;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    iget-object v1, p1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->-wrap1(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Landroid/view/View;)Z

    .line 9698
    :cond_0
    return-void
.end method

.method public onRemoveFinished(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V
    .locals 3
    .param p1, "item"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .prologue
    .line 9683
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    .line 9684
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimatorRestoreListener;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    iget-object v1, p1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->-wrap1(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->isTmpDetached()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9685
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimatorRestoreListener;->this$0:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    iget-object v1, p1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 9682
    :cond_0
    return-void
.end method
