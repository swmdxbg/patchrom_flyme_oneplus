.class Lcom/android/settings_ex/users/EditUserPhotoController$4;
.super Ljava/lang/Object;
.source "EditUserPhotoController.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/users/EditUserPhotoController;->showUpdatePhotoPopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/users/EditUserPhotoController;

.field final synthetic val$listPopupWindow:Landroid/widget/ListPopupWindow;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/users/EditUserPhotoController;Landroid/widget/ListPopupWindow;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_ex/users/EditUserPhotoController;
    .param p2, "val$listPopupWindow"    # Landroid/widget/ListPopupWindow;

    .prologue
    .line 181
    iput-object p1, p0, Lcom/android/settings_ex/users/EditUserPhotoController$4;->this$0:Lcom/android/settings_ex/users/EditUserPhotoController;

    iput-object p2, p0, Lcom/android/settings_ex/users/EditUserPhotoController$4;->val$listPopupWindow:Landroid/widget/ListPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 184
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/android/settings_ex/users/EditUserPhotoController$4;->val$listPopupWindow:Landroid/widget/ListPopupWindow;

    invoke-virtual {v1}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 186
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    invoke-interface {v1, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/users/EditUserPhotoController$RestrictedMenuItem;

    .line 187
    .local v0, "item":Lcom/android/settings_ex/users/EditUserPhotoController$RestrictedMenuItem;
    invoke-virtual {v0}, Lcom/android/settings_ex/users/EditUserPhotoController$RestrictedMenuItem;->doAction()V

    .line 183
    return-void
.end method
