.class public final Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment$Keyboards$KeyboardInfo;
.super Ljava/lang/Object;
.source "PhysicalKeyboardFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment$Keyboards;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "KeyboardInfo"
.end annotation


# instance fields
.field public final mImSubtype:Landroid/view/inputmethod/InputMethodSubtype;

.field public final mImi:Landroid/view/inputmethod/InputMethodInfo;

.field public final mLayout:Landroid/hardware/input/KeyboardLayout;


# direct methods
.method public constructor <init>(Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;Landroid/hardware/input/KeyboardLayout;)V
    .locals 0
    .param p1, "imi"    # Landroid/view/inputmethod/InputMethodInfo;
    .param p2, "imSubtype"    # Landroid/view/inputmethod/InputMethodSubtype;
    .param p3, "layout"    # Landroid/hardware/input/KeyboardLayout;

    .prologue
    .line 444
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 448
    iput-object p1, p0, Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment$Keyboards$KeyboardInfo;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    .line 449
    iput-object p2, p0, Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment$Keyboards$KeyboardInfo;->mImSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    .line 450
    iput-object p3, p0, Lcom/android/settings_ex/inputmethod/PhysicalKeyboardFragment$Keyboards$KeyboardInfo;->mLayout:Landroid/hardware/input/KeyboardLayout;

    .line 447
    return-void
.end method
