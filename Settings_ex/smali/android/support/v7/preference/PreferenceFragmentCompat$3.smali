.class Landroid/support/v7/preference/PreferenceFragmentCompat$3;
.super Ljava/lang/Object;
.source "PreferenceFragmentCompat.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/preference/PreferenceFragmentCompat;->scrollToPreferenceInternal(Landroid/support/v7/preference/Preference;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/preference/PreferenceFragmentCompat;

.field final synthetic val$key:Ljava/lang/String;

.field final synthetic val$preference:Landroid/support/v7/preference/Preference;


# direct methods
.method constructor <init>(Landroid/support/v7/preference/PreferenceFragmentCompat;Landroid/support/v7/preference/Preference;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v7/preference/PreferenceFragmentCompat;
    .param p2, "val$preference"    # Landroid/support/v7/preference/Preference;
    .param p3, "val$key"    # Ljava/lang/String;

    .prologue
    .line 669
    iput-object p1, p0, Landroid/support/v7/preference/PreferenceFragmentCompat$3;->this$0:Landroid/support/v7/preference/PreferenceFragmentCompat;

    iput-object p2, p0, Landroid/support/v7/preference/PreferenceFragmentCompat$3;->val$preference:Landroid/support/v7/preference/Preference;

    iput-object p3, p0, Landroid/support/v7/preference/PreferenceFragmentCompat$3;->val$key:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 672
    iget-object v2, p0, Landroid/support/v7/preference/PreferenceFragmentCompat$3;->this$0:Landroid/support/v7/preference/PreferenceFragmentCompat;

    invoke-static {v2}, Landroid/support/v7/preference/PreferenceFragmentCompat;->-get0(Landroid/support/v7/preference/PreferenceFragmentCompat;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    .line 673
    .local v0, "adapter":Landroid/support/v7/widget/RecyclerView$Adapter;
    instance-of v2, v0, Landroid/support/v7/preference/PreferenceGroup$PreferencePositionCallback;

    if-nez v2, :cond_1

    .line 675
    if-eqz v0, :cond_0

    .line 676
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "Adapter must implement PreferencePositionCallback"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 680
    :cond_0
    return-void

    .line 684
    :cond_1
    iget-object v2, p0, Landroid/support/v7/preference/PreferenceFragmentCompat$3;->val$preference:Landroid/support/v7/preference/Preference;

    if-eqz v2, :cond_2

    move-object v2, v0

    .line 685
    check-cast v2, Landroid/support/v7/preference/PreferenceGroup$PreferencePositionCallback;

    .line 686
    iget-object v3, p0, Landroid/support/v7/preference/PreferenceFragmentCompat$3;->val$preference:Landroid/support/v7/preference/Preference;

    .line 685
    invoke-interface {v2, v3}, Landroid/support/v7/preference/PreferenceGroup$PreferencePositionCallback;->getPreferenceAdapterPosition(Landroid/support/v7/preference/Preference;)I

    move-result v1

    .line 691
    .local v1, "position":I
    :goto_0
    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    .line 692
    iget-object v2, p0, Landroid/support/v7/preference/PreferenceFragmentCompat$3;->this$0:Landroid/support/v7/preference/PreferenceFragmentCompat;

    invoke-static {v2}, Landroid/support/v7/preference/PreferenceFragmentCompat;->-get0(Landroid/support/v7/preference/PreferenceFragmentCompat;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/RecyclerView;->scrollToPosition(I)V

    .line 671
    :goto_1
    return-void

    .end local v1    # "position":I
    :cond_2
    move-object v2, v0

    .line 688
    check-cast v2, Landroid/support/v7/preference/PreferenceGroup$PreferencePositionCallback;

    .line 689
    iget-object v3, p0, Landroid/support/v7/preference/PreferenceFragmentCompat$3;->val$key:Ljava/lang/String;

    .line 688
    invoke-interface {v2, v3}, Landroid/support/v7/preference/PreferenceGroup$PreferencePositionCallback;->getPreferenceAdapterPosition(Ljava/lang/String;)I

    move-result v1

    .restart local v1    # "position":I
    goto :goto_0

    .line 696
    :cond_3
    new-instance v2, Landroid/support/v7/preference/PreferenceFragmentCompat$ScrollToPreferenceObserver;

    iget-object v3, p0, Landroid/support/v7/preference/PreferenceFragmentCompat$3;->this$0:Landroid/support/v7/preference/PreferenceFragmentCompat;

    invoke-static {v3}, Landroid/support/v7/preference/PreferenceFragmentCompat;->-get0(Landroid/support/v7/preference/PreferenceFragmentCompat;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v3

    iget-object v4, p0, Landroid/support/v7/preference/PreferenceFragmentCompat$3;->val$preference:Landroid/support/v7/preference/Preference;

    iget-object v5, p0, Landroid/support/v7/preference/PreferenceFragmentCompat$3;->val$key:Ljava/lang/String;

    invoke-direct {v2, v0, v3, v4, v5}, Landroid/support/v7/preference/PreferenceFragmentCompat$ScrollToPreferenceObserver;-><init>(Landroid/support/v7/widget/RecyclerView$Adapter;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/preference/Preference;Ljava/lang/String;)V

    .line 695
    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V

    goto :goto_1
.end method
