.class Lcom/android/settings_ex/SecuritySettings$SecuritySubSettings$1;
.super Ljava/lang/Object;
.source "SecuritySettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/SecuritySettings$SecuritySubSettings;->createPreferenceHierarchy()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings_ex/SecuritySettings$SecuritySubSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/SecuritySettings$SecuritySubSettings;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/settings_ex/SecuritySettings$SecuritySubSettings;

    .prologue
    .line 1293
    iput-object p1, p0, Lcom/android/settings_ex/SecuritySettings$SecuritySubSettings$1;->this$1:Lcom/android/settings_ex/SecuritySettings$SecuritySubSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 1
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    .line 1296
    iget-object v0, p0, Lcom/android/settings_ex/SecuritySettings$SecuritySubSettings$1;->this$1:Lcom/android/settings_ex/SecuritySettings$SecuritySubSettings;

    invoke-static {v0}, Lcom/android/settings_ex/OwnerInfoSettings;->show(Landroid/app/Fragment;)V

    .line 1297
    const/4 v0, 0x1

    return v0
.end method
