.class public Lcom/android/settings_ex/applications/UsageAccessDetails;
.super Lcom/android/settings_ex/applications/AppInfoWithHeader;
.source "UsageAccessDetails.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# static fields
.field private static final KEY_APP_OPS_PREFERENCE_SCREEN:Ljava/lang/String; = "app_ops_preference_screen"

.field private static final KEY_APP_OPS_SETTINGS_DESC:Ljava/lang/String; = "app_ops_settings_description"

.field private static final KEY_APP_OPS_SETTINGS_PREFS:Ljava/lang/String; = "app_ops_settings_preference"

.field private static final KEY_APP_OPS_SETTINGS_SWITCH:Ljava/lang/String; = "app_ops_settings_switch"


# instance fields
.field private mAppOpsManager:Landroid/app/AppOpsManager;

.field private mDpm:Landroid/app/admin/DevicePolicyManager;

.field private mSettingsIntent:Landroid/content/Intent;

.field private mSwitchPref:Landroid/preference/SwitchPreference;

.field private mUsageBridge:Lcom/android/settings_ex/applications/AppStateUsageBridge;

.field private mUsageDesc:Landroid/preference/Preference;

.field private mUsagePrefs:Landroid/preference/Preference;

.field private mUsageState:Lcom/android/settings_ex/applications/AppStateUsageBridge$UsageState;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/settings_ex/applications/AppInfoWithHeader;-><init>()V

    return-void
.end method

.method private setHasAccess(Z)V
    .locals 5
    .param p1, "newState"    # Z

    .prologue
    .line 124
    iget-object v1, p0, Lcom/android/settings_ex/applications/UsageAccessDetails;->mAppOpsManager:Landroid/app/AppOpsManager;

    const/16 v2, 0x2b

    iget-object v0, p0, Lcom/android/settings_ex/applications/UsageAccessDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v4, p0, Lcom/android/settings_ex/applications/UsageAccessDetails;->mPackageName:Ljava/lang/String;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    .line 126
    return-void

    .line 124
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected createDialog(II)Lcom/oneplus/app/OPAlertDialog;
    .locals 1
    .param p1, "id"    # I
    .param p2, "errorCode"    # I

    .prologue
    .line 163
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 168
    const/16 v0, 0xb7

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 63
    invoke-super {p0, p1}, Lcom/android/settings_ex/applications/AppInfoWithHeader;->onCreate(Landroid/os/Bundle;)V

    .line 65
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/UsageAccessDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 66
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Lcom/android/settings_ex/applications/AppStateUsageBridge;

    iget-object v2, p0, Lcom/android/settings_ex/applications/UsageAccessDetails;->mState:Lcom/android/settings_exlib/applications/ApplicationsState;

    const/4 v3, 0x0

    invoke-direct {v1, v0, v2, v3}, Lcom/android/settings_ex/applications/AppStateUsageBridge;-><init>(Landroid/content/Context;Lcom/android/settings_exlib/applications/ApplicationsState;Lcom/android/settings_ex/applications/AppStateBaseBridge$Callback;)V

    iput-object v1, p0, Lcom/android/settings_ex/applications/UsageAccessDetails;->mUsageBridge:Lcom/android/settings_ex/applications/AppStateUsageBridge;

    .line 67
    const-string v1, "appops"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    iput-object v1, p0, Lcom/android/settings_ex/applications/UsageAccessDetails;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 68
    const-class v1, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    iput-object v1, p0, Lcom/android/settings_ex/applications/UsageAccessDetails;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 70
    const v1, 0x7f08000b

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/applications/UsageAccessDetails;->addPreferencesFromResource(I)V

    .line 71
    const-string v1, "app_ops_settings_switch"

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/applications/UsageAccessDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreference;

    iput-object v1, p0, Lcom/android/settings_ex/applications/UsageAccessDetails;->mSwitchPref:Landroid/preference/SwitchPreference;

    .line 72
    const-string v1, "app_ops_settings_preference"

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/applications/UsageAccessDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/applications/UsageAccessDetails;->mUsagePrefs:Landroid/preference/Preference;

    .line 73
    const-string v1, "app_ops_settings_description"

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/applications/UsageAccessDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/applications/UsageAccessDetails;->mUsageDesc:Landroid/preference/Preference;

    .line 75
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/UsageAccessDetails;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const v2, 0x7f0c0d3e

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setTitle(I)V

    .line 76
    iget-object v1, p0, Lcom/android/settings_ex/applications/UsageAccessDetails;->mSwitchPref:Landroid/preference/SwitchPreference;

    const v2, 0x7f0c0d3f

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setTitle(I)V

    .line 77
    iget-object v1, p0, Lcom/android/settings_ex/applications/UsageAccessDetails;->mUsagePrefs:Landroid/preference/Preference;

    const v2, 0x7f0c0d40

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setTitle(I)V

    .line 78
    iget-object v1, p0, Lcom/android/settings_ex/applications/UsageAccessDetails;->mUsageDesc:Landroid/preference/Preference;

    const v2, 0x7f0c0d41

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(I)V

    .line 80
    iget-object v1, p0, Lcom/android/settings_ex/applications/UsageAccessDetails;->mSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 81
    iget-object v1, p0, Lcom/android/settings_ex/applications/UsageAccessDetails;->mUsagePrefs:Landroid/preference/Preference;

    invoke-virtual {v1, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 83
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.category.USAGE_ACCESS_CONFIG"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/applications/UsageAccessDetails;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/applications/UsageAccessDetails;->mSettingsIntent:Landroid/content/Intent;

    .line 86
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 105
    iget-object v2, p0, Lcom/android/settings_ex/applications/UsageAccessDetails;->mSwitchPref:Landroid/preference/SwitchPreference;

    if-ne p1, v2, :cond_3

    .line 106
    iget-object v2, p0, Lcom/android/settings_ex/applications/UsageAccessDetails;->mUsageState:Lcom/android/settings_ex/applications/AppStateUsageBridge$UsageState;

    if-eqz v2, :cond_2

    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iget-object v3, p0, Lcom/android/settings_ex/applications/UsageAccessDetails;->mUsageState:Lcom/android/settings_ex/applications/AppStateUsageBridge$UsageState;

    invoke-virtual {v3}, Lcom/android/settings_ex/applications/AppStateUsageBridge$UsageState;->isPermissible()Z

    move-result v3

    if-eq v2, v3, :cond_2

    .line 107
    iget-object v2, p0, Lcom/android/settings_ex/applications/UsageAccessDetails;->mUsageState:Lcom/android/settings_ex/applications/AppStateUsageBridge$UsageState;

    invoke-virtual {v2}, Lcom/android/settings_ex/applications/AppStateUsageBridge$UsageState;->isPermissible()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings_ex/applications/UsageAccessDetails;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v3, p0, Lcom/android/settings_ex/applications/UsageAccessDetails;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/app/admin/DevicePolicyManager;->isProfileOwnerApp(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 108
    new-instance v2, Lcom/oneplus/app/OPAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/applications/UsageAccessDetails;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/oneplus/app/OPAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x1080345

    invoke-virtual {v2, v3}, Lcom/oneplus/app/OPAlertDialog$Builder;->setIcon(I)Lcom/oneplus/app/OPAlertDialog$Builder;

    move-result-object v2

    const v3, 0x1040014

    invoke-virtual {v2, v3}, Lcom/oneplus/app/OPAlertDialog$Builder;->setTitle(I)Lcom/oneplus/app/OPAlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0c0d83

    invoke-virtual {v2, v3}, Lcom/oneplus/app/OPAlertDialog$Builder;->setMessage(I)Lcom/oneplus/app/OPAlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0c03a3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/oneplus/app/OPAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/oneplus/app/OPAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oneplus/app/OPAlertDialog$Builder;->show()Lcom/oneplus/app/OPAlertDialog;

    .line 115
    :cond_0
    iget-object v2, p0, Lcom/android/settings_ex/applications/UsageAccessDetails;->mUsageState:Lcom/android/settings_ex/applications/AppStateUsageBridge$UsageState;

    invoke-virtual {v2}, Lcom/android/settings_ex/applications/AppStateUsageBridge$UsageState;->isPermissible()Z

    move-result v2

    if-nez v2, :cond_1

    move v0, v1

    :cond_1
    invoke-direct {p0, v0}, Lcom/android/settings_ex/applications/UsageAccessDetails;->setHasAccess(Z)V

    .line 116
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/UsageAccessDetails;->refreshUi()Z

    .line 120
    :cond_2
    :goto_0
    return v1

    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_3
    move v1, v0

    goto :goto_0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 5
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 90
    iget-object v1, p0, Lcom/android/settings_ex/applications/UsageAccessDetails;->mUsagePrefs:Landroid/preference/Preference;

    if-ne p1, v1, :cond_1

    .line 91
    iget-object v1, p0, Lcom/android/settings_ex/applications/UsageAccessDetails;->mSettingsIntent:Landroid/content/Intent;

    if-eqz v1, :cond_0

    .line 93
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/UsageAccessDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/applications/UsageAccessDetails;->mSettingsIntent:Landroid/content/Intent;

    new-instance v3, Landroid/os/UserHandle;

    iget v4, p0, Lcom/android/settings_ex/applications/UsageAccessDetails;->mUserId:I

    invoke-direct {v3, v4}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    :cond_0
    :goto_0
    const/4 v1, 0x1

    .line 100
    :goto_1
    return v1

    .line 94
    :catch_0
    move-exception v0

    .line 95
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    sget-object v1, Lcom/android/settings_ex/applications/UsageAccessDetails;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to launch app usage access settings "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/applications/UsageAccessDetails;->mSettingsIntent:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 100
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method protected refreshUi()Z
    .locals 7

    .prologue
    .line 130
    iget-object v3, p0, Lcom/android/settings_ex/applications/UsageAccessDetails;->mUsageBridge:Lcom/android/settings_ex/applications/AppStateUsageBridge;

    iget-object v4, p0, Lcom/android/settings_ex/applications/UsageAccessDetails;->mPackageName:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/settings_ex/applications/UsageAccessDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v3, v4, v5}, Lcom/android/settings_ex/applications/AppStateUsageBridge;->getUsageInfo(Ljava/lang/String;I)Lcom/android/settings_ex/applications/AppStateUsageBridge$UsageState;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/applications/UsageAccessDetails;->mUsageState:Lcom/android/settings_ex/applications/AppStateUsageBridge$UsageState;

    .line 133
    iget-object v3, p0, Lcom/android/settings_ex/applications/UsageAccessDetails;->mUsageState:Lcom/android/settings_ex/applications/AppStateUsageBridge$UsageState;

    invoke-virtual {v3}, Lcom/android/settings_ex/applications/AppStateUsageBridge$UsageState;->isPermissible()Z

    move-result v0

    .line 134
    .local v0, "hasAccess":Z
    iget-object v3, p0, Lcom/android/settings_ex/applications/UsageAccessDetails;->mSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 135
    iget-object v3, p0, Lcom/android/settings_ex/applications/UsageAccessDetails;->mSwitchPref:Landroid/preference/SwitchPreference;

    iget-object v4, p0, Lcom/android/settings_ex/applications/UsageAccessDetails;->mUsageState:Lcom/android/settings_ex/applications/AppStateUsageBridge$UsageState;

    iget-boolean v4, v4, Lcom/android/settings_ex/applications/AppStateUsageBridge$UsageState;->permissionDeclared:Z

    invoke-virtual {v3, v4}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 136
    iget-object v3, p0, Lcom/android/settings_ex/applications/UsageAccessDetails;->mUsagePrefs:Landroid/preference/Preference;

    invoke-virtual {v3, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 138
    iget-object v3, p0, Lcom/android/settings_ex/applications/UsageAccessDetails;->mPm:Landroid/content/pm/PackageManager;

    iget-object v4, p0, Lcom/android/settings_ex/applications/UsageAccessDetails;->mSettingsIntent:Landroid/content/Intent;

    const/16 v5, 0x80

    iget v6, p0, Lcom/android/settings_ex/applications/UsageAccessDetails;->mUserId:I

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 140
    .local v2, "resolveInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v2, :cond_2

    .line 141
    const-string v3, "app_ops_settings_preference"

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/applications/UsageAccessDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    if-nez v3, :cond_0

    .line 142
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/UsageAccessDetails;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings_ex/applications/UsageAccessDetails;->mUsagePrefs:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 144
    :cond_0
    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v3, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 145
    .local v1, "metaData":Landroid/os/Bundle;
    iget-object v3, p0, Lcom/android/settings_ex/applications/UsageAccessDetails;->mSettingsIntent:Landroid/content/Intent;

    new-instance v4, Landroid/content/ComponentName;

    iget-object v5, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v6, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 147
    if-eqz v1, :cond_1

    const-string v3, "android.settings.metadata.USAGE_ACCESS_REASON"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 149
    iget-object v3, p0, Lcom/android/settings_ex/applications/UsageAccessDetails;->mSwitchPref:Landroid/preference/SwitchPreference;

    const-string v4, "android.settings.metadata.USAGE_ACCESS_REASON"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 158
    .end local v1    # "metaData":Landroid/os/Bundle;
    :cond_1
    :goto_0
    const/4 v3, 0x1

    return v3

    .line 153
    :cond_2
    const-string v3, "app_ops_settings_preference"

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/applications/UsageAccessDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 154
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/UsageAccessDetails;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings_ex/applications/UsageAccessDetails;->mUsagePrefs:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method
