.class Lcom/android/settings_ex/wfd/WifiDisplaySettings$5;
.super Landroid/support/v7/preference/Preference;
.source "WifiDisplaySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/wfd/WifiDisplaySettings;->buildCertificationMenu(Landroid/support/v7/preference/PreferenceScreen;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/wfd/WifiDisplaySettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/wfd/WifiDisplaySettings;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_ex/wfd/WifiDisplaySettings;
    .param p2, "$anonymous0"    # Landroid/content/Context;

    .prologue
    .line 329
    iput-object p1, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings$5;->this$0:Lcom/android/settings_ex/wfd/WifiDisplaySettings;

    invoke-direct {p0, p2}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 2
    .param p1, "view"    # Landroid/support/v7/preference/PreferenceViewHolder;

    .prologue
    .line 332
    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 334
    const v1, 0x7f11034b

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 335
    .local v0, "b":Landroid/widget/Button;
    const v1, 0x7f0e06ff

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 336
    new-instance v1, Lcom/android/settings_ex/wfd/WifiDisplaySettings$5$1;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/wfd/WifiDisplaySettings$5$1;-><init>(Lcom/android/settings_ex/wfd/WifiDisplaySettings$5;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 343
    const v1, 0x7f1101e7

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "b":Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 344
    .restart local v0    # "b":Landroid/widget/Button;
    const v1, 0x7f0e0700

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 345
    new-instance v1, Lcom/android/settings_ex/wfd/WifiDisplaySettings$5$2;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/wfd/WifiDisplaySettings$5$2;-><init>(Lcom/android/settings_ex/wfd/WifiDisplaySettings$5;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 331
    return-void
.end method
