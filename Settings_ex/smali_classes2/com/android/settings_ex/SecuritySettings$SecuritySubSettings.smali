.class public Lcom/android/settings_ex/SecuritySettings$SecuritySubSettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "SecuritySettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/SecuritySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SecuritySubSettings"
.end annotation


# static fields
.field private static final KEY_LOCK_AFTER_TIMEOUT:Ljava/lang/String; = "lock_after_timeout"

.field private static final KEY_OWNER_INFO_SETTINGS:Ljava/lang/String; = "owner_info_settings"

.field private static final KEY_POWER_INSTANTLY_LOCKS:Ljava/lang/String; = "power_button_instantly_locks"

.field private static final KEY_VISIBLE_PATTERN:Ljava/lang/String; = "visiblepattern"

.field private static final SWITCH_PREFERENCE_KEYS:[Ljava/lang/String;


# instance fields
.field private mDPM:Landroid/app/admin/DevicePolicyManager;

.field private mLockAfter:Lcom/android/settings_ex/TimeoutListPreference;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mOwnerInfoPref:Lcom/android/settings_exlib/RestrictedPreference;

.field private mPowerButtonInstantlyLocks:Landroid/support/v14/preference/SwitchPreference;

.field private mVisiblePattern:Landroid/support/v14/preference/SwitchPreference;


# direct methods
.method static synthetic -wrap0(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/settings_ex/ManagedLockPasswordProvider;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "lockPatternUtils"    # Lcom/android/internal/widget/LockPatternUtils;
    .param p2, "managedPasswordProvider"    # Lcom/android/settings_ex/ManagedLockPasswordProvider;

    .prologue
    invoke-static {p0, p1, p2}, Lcom/android/settings_ex/SecuritySettings$SecuritySubSettings;->getResIdForLockUnlockSubScreen(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/settings_ex/ManagedLockPasswordProvider;)I

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 1200
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "lock_after_timeout"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 1201
    const-string/jumbo v1, "visiblepattern"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "power_button_instantly_locks"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 1200
    sput-object v0, Lcom/android/settings_ex/SecuritySettings$SecuritySubSettings;->SWITCH_PREFERENCE_KEYS:[Ljava/lang/String;

    .line 1191
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1191
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private createPreferenceHierarchy()V
    .locals 13

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v12, 0x0

    .line 1250
    invoke-virtual {p0}, Lcom/android/settings_ex/SecuritySettings$SecuritySubSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v4

    .line 1251
    .local v4, "root":Landroid/support/v7/preference/PreferenceScreen;
    if-eqz v4, :cond_0

    .line 1252
    invoke-virtual {v4}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    .line 1254
    :cond_0
    const/4 v4, 0x0

    .line 1256
    .local v4, "root":Landroid/support/v7/preference/PreferenceScreen;
    invoke-virtual {p0}, Lcom/android/settings_ex/SecuritySettings$SecuritySubSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    .line 1257
    new-instance v9, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings_ex/SecuritySettings$SecuritySubSettings;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 1258
    invoke-virtual {p0}, Lcom/android/settings_ex/SecuritySettings$SecuritySubSettings;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {}, Lcom/android/settings_ex/SecuritySettings;->-get0()I

    move-result v11

    invoke-static {v10, v11}, Lcom/android/settings_ex/ManagedLockPasswordProvider;->get(Landroid/content/Context;I)Lcom/android/settings_ex/ManagedLockPasswordProvider;

    move-result-object v10

    .line 1256
    invoke-static {v6, v9, v10}, Lcom/android/settings_ex/SecuritySettings$SecuritySubSettings;->getResIdForLockUnlockSubScreen(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/settings_ex/ManagedLockPasswordProvider;)I

    move-result v3

    .line 1259
    .local v3, "resid":I
    invoke-virtual {p0, v3}, Lcom/android/settings_ex/SecuritySettings$SecuritySubSettings;->addPreferencesFromResource(I)V

    .line 1262
    const-string/jumbo v6, "lock_after_timeout"

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/SecuritySettings$SecuritySubSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    check-cast v6, Lcom/android/settings_ex/TimeoutListPreference;

    iput-object v6, p0, Lcom/android/settings_ex/SecuritySettings$SecuritySubSettings;->mLockAfter:Lcom/android/settings_ex/TimeoutListPreference;

    .line 1263
    iget-object v6, p0, Lcom/android/settings_ex/SecuritySettings$SecuritySubSettings;->mLockAfter:Lcom/android/settings_ex/TimeoutListPreference;

    if-eqz v6, :cond_1

    .line 1264
    invoke-direct {p0}, Lcom/android/settings_ex/SecuritySettings$SecuritySubSettings;->setupLockAfterPreference()V

    .line 1265
    invoke-direct {p0}, Lcom/android/settings_ex/SecuritySettings$SecuritySubSettings;->updateLockAfterPreferenceSummary()V

    .line 1269
    :cond_1
    const-string/jumbo v6, "visiblepattern"

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/SecuritySettings$SecuritySubSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/support/v14/preference/SwitchPreference;

    iput-object v6, p0, Lcom/android/settings_ex/SecuritySettings$SecuritySubSettings;->mVisiblePattern:Landroid/support/v14/preference/SwitchPreference;

    .line 1273
    const-string/jumbo v6, "power_button_instantly_locks"

    .line 1272
    invoke-virtual {p0, v6}, Lcom/android/settings_ex/SecuritySettings$SecuritySubSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/support/v14/preference/SwitchPreference;

    iput-object v6, p0, Lcom/android/settings_ex/SecuritySettings$SecuritySubSettings;->mPowerButtonInstantlyLocks:Landroid/support/v14/preference/SwitchPreference;

    .line 1274
    const-string/jumbo v6, "trust_agent"

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/SecuritySettings$SecuritySubSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v5

    .line 1275
    .local v5, "trustAgentPreference":Landroid/support/v7/preference/Preference;
    iget-object v6, p0, Lcom/android/settings_ex/SecuritySettings$SecuritySubSettings;->mPowerButtonInstantlyLocks:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v6, :cond_2

    .line 1276
    if-eqz v5, :cond_2

    .line 1277
    invoke-virtual {v5}, Landroid/support/v7/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-lez v6, :cond_2

    .line 1278
    iget-object v6, p0, Lcom/android/settings_ex/SecuritySettings$SecuritySubSettings;->mPowerButtonInstantlyLocks:Landroid/support/v14/preference/SwitchPreference;

    new-array v9, v8, [Ljava/lang/Object;

    .line 1280
    invoke-virtual {v5}, Landroid/support/v7/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v10

    aput-object v10, v9, v7

    .line 1279
    const v10, 0x7f0e09df

    .line 1278
    invoke-virtual {p0, v10, v9}, Lcom/android/settings_ex/SecuritySettings$SecuritySubSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/support/v14/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1283
    :cond_2
    const-string/jumbo v6, "owner_info_settings"

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/SecuritySettings$SecuritySubSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    check-cast v6, Lcom/android/settings_exlib/RestrictedPreference;

    iput-object v6, p0, Lcom/android/settings_ex/SecuritySettings$SecuritySubSettings;->mOwnerInfoPref:Lcom/android/settings_exlib/RestrictedPreference;

    .line 1284
    iget-object v6, p0, Lcom/android/settings_ex/SecuritySettings$SecuritySubSettings;->mOwnerInfoPref:Lcom/android/settings_exlib/RestrictedPreference;

    if-eqz v6, :cond_3

    .line 1285
    iget-object v6, p0, Lcom/android/settings_ex/SecuritySettings$SecuritySubSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v6}, Lcom/android/internal/widget/LockPatternUtils;->isDeviceOwnerInfoEnabled()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1286
    invoke-virtual {p0}, Lcom/android/settings_ex/SecuritySettings$SecuritySubSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings_exlib/RestrictedLockUtils;->getDeviceOwner(Landroid/content/Context;)Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    .line 1287
    .local v0, "admin":Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;
    iget-object v6, p0, Lcom/android/settings_ex/SecuritySettings$SecuritySubSettings;->mOwnerInfoPref:Lcom/android/settings_exlib/RestrictedPreference;

    invoke-virtual {v6, v0}, Lcom/android/settings_exlib/RestrictedPreference;->setDisabledByAdmin(Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 1304
    .end local v0    # "admin":Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;
    :cond_3
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    sget-object v6, Lcom/android/settings_ex/SecuritySettings$SecuritySubSettings;->SWITCH_PREFERENCE_KEYS:[Ljava/lang/String;

    array-length v6, v6

    if-ge v1, v6, :cond_7

    .line 1305
    sget-object v6, Lcom/android/settings_ex/SecuritySettings$SecuritySubSettings;->SWITCH_PREFERENCE_KEYS:[Ljava/lang/String;

    aget-object v6, v6, v1

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/SecuritySettings$SecuritySubSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    .line 1306
    .local v2, "pref":Landroid/support/v7/preference/Preference;
    if-eqz v2, :cond_4

    invoke-virtual {v2, p0}, Landroid/support/v7/preference/Preference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 1304
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1289
    .end local v1    # "i":I
    .end local v2    # "pref":Landroid/support/v7/preference/Preference;
    :cond_5
    iget-object v6, p0, Lcom/android/settings_ex/SecuritySettings$SecuritySubSettings;->mOwnerInfoPref:Lcom/android/settings_exlib/RestrictedPreference;

    invoke-virtual {v6, v12}, Lcom/android/settings_exlib/RestrictedPreference;->setDisabledByAdmin(Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 1290
    iget-object v9, p0, Lcom/android/settings_ex/SecuritySettings$SecuritySubSettings;->mOwnerInfoPref:Lcom/android/settings_exlib/RestrictedPreference;

    iget-object v6, p0, Lcom/android/settings_ex/SecuritySettings$SecuritySubSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/settings_ex/SecuritySettings;->-get0()I

    move-result v10

    invoke-virtual {v6, v10}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v6

    if-eqz v6, :cond_6

    move v6, v7

    :goto_2
    invoke-virtual {v9, v6}, Lcom/android/settings_exlib/RestrictedPreference;->setEnabled(Z)V

    .line 1291
    iget-object v6, p0, Lcom/android/settings_ex/SecuritySettings$SecuritySubSettings;->mOwnerInfoPref:Lcom/android/settings_exlib/RestrictedPreference;

    invoke-virtual {v6}, Lcom/android/settings_exlib/RestrictedPreference;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1292
    iget-object v6, p0, Lcom/android/settings_ex/SecuritySettings$SecuritySubSettings;->mOwnerInfoPref:Lcom/android/settings_exlib/RestrictedPreference;

    .line 1293
    new-instance v7, Lcom/android/settings_ex/SecuritySettings$SecuritySubSettings$1;

    invoke-direct {v7, p0}, Lcom/android/settings_ex/SecuritySettings$SecuritySubSettings$1;-><init>(Lcom/android/settings_ex/SecuritySettings$SecuritySubSettings;)V

    .line 1292
    invoke-virtual {v6, v7}, Lcom/android/settings_exlib/RestrictedPreference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    goto :goto_0

    :cond_6
    move v6, v8

    .line 1290
    goto :goto_2

    .line 1249
    .restart local v1    # "i":I
    :cond_7
    return-void
.end method

.method private static getResIdForLockUnlockSubScreen(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/settings_ex/ManagedLockPasswordProvider;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "lockPatternUtils"    # Lcom/android/internal/widget/LockPatternUtils;
    .param p2, "managedPasswordProvider"    # Lcom/android/settings_ex/ManagedLockPasswordProvider;

    .prologue
    .line 1381
    invoke-static {}, Lcom/android/settings_ex/SecuritySettings;->-get0()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1382
    invoke-static {}, Lcom/android/settings_ex/SecuritySettings;->-get0()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 1398
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 1384
    :sswitch_0
    const v0, 0x7f08007d

    return v0

    .line 1387
    :sswitch_1
    const v0, 0x7f080081

    return v0

    .line 1391
    :sswitch_2
    const v0, 0x7f08007a

    return v0

    .line 1393
    :sswitch_3
    invoke-virtual {p2}, Lcom/android/settings_ex/ManagedLockPasswordProvider;->getResIdForLockUnlockSubScreen()I

    move-result v0

    return v0

    .line 1395
    :cond_1
    invoke-static {}, Lcom/android/settings_ex/SecuritySettings;->-get0()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1396
    const v0, 0x7f080083

    return v0

    .line 1382
    :sswitch_data_0
    .sparse-switch
        0x10000 -> :sswitch_0
        0x20000 -> :sswitch_1
        0x30000 -> :sswitch_1
        0x40000 -> :sswitch_2
        0x50000 -> :sswitch_2
        0x60000 -> :sswitch_2
        0x80000 -> :sswitch_3
    .end sparse-switch
.end method

.method private setupLockAfterPreference()V
    .locals 14

    .prologue
    const/4 v11, 0x0

    .line 1312
    invoke-virtual {p0}, Lcom/android/settings_ex/SecuritySettings$SecuritySubSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1313
    const-string/jumbo v10, "lock_screen_lock_after_timeout"

    const-wide/16 v12, 0x1388

    .line 1312
    invoke-static {v1, v10, v12, v13}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v4

    .line 1314
    .local v4, "currentTimeout":J
    iget-object v1, p0, Lcom/android/settings_ex/SecuritySettings$SecuritySubSettings;->mLockAfter:Lcom/android/settings_ex/TimeoutListPreference;

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Lcom/android/settings_ex/TimeoutListPreference;->setValue(Ljava/lang/String;)V

    .line 1315
    iget-object v1, p0, Lcom/android/settings_ex/SecuritySettings$SecuritySubSettings;->mLockAfter:Lcom/android/settings_ex/TimeoutListPreference;

    invoke-virtual {v1, p0}, Lcom/android/settings_ex/TimeoutListPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 1316
    iget-object v1, p0, Lcom/android/settings_ex/SecuritySettings$SecuritySubSettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    if-eqz v1, :cond_0

    .line 1318
    invoke-virtual {p0}, Lcom/android/settings_ex/SecuritySettings$SecuritySubSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 1317
    invoke-static {v1}, Lcom/android/settings_exlib/RestrictedLockUtils;->checkIfMaximumTimeToLockIsSet(Landroid/content/Context;)Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    .line 1319
    .local v0, "admin":Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;
    iget-object v1, p0, Lcom/android/settings_ex/SecuritySettings$SecuritySubSettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 1320
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v10

    .line 1319
    invoke-virtual {v1, v10}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLockForUserAndProfiles(I)J

    move-result-wide v2

    .line 1322
    .local v2, "adminTimeout":J
    invoke-virtual {p0}, Lcom/android/settings_ex/SecuritySettings$SecuritySubSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v10, "screen_off_timeout"

    invoke-static {v1, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 1321
    invoke-static {v11, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-long v6, v1

    .line 1326
    .local v6, "displayTimeout":J
    const-wide/16 v10, 0x0

    sub-long v12, v2, v6

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    .line 1327
    .local v8, "maxTimeout":J
    iget-object v1, p0, Lcom/android/settings_ex/SecuritySettings$SecuritySubSettings;->mLockAfter:Lcom/android/settings_ex/TimeoutListPreference;

    invoke-virtual {v1, v8, v9, v0}, Lcom/android/settings_ex/TimeoutListPreference;->removeUnusableTimeouts(JLcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 1310
    .end local v0    # "admin":Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;
    .end local v2    # "adminTimeout":J
    .end local v6    # "displayTimeout":J
    .end local v8    # "maxTimeout":J
    :cond_0
    return-void
.end method

.method private updateLockAfterPreferenceSummary()V
    .locals 14

    .prologue
    .line 1333
    iget-object v10, p0, Lcom/android/settings_ex/SecuritySettings$SecuritySubSettings;->mLockAfter:Lcom/android/settings_ex/TimeoutListPreference;

    invoke-virtual {v10}, Lcom/android/settings_ex/TimeoutListPreference;->isDisabledByAdmin()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 1334
    const v10, 0x7f0e0fea

    invoke-virtual {p0, v10}, Lcom/android/settings_ex/SecuritySettings$SecuritySubSettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1362
    .local v6, "summary":Ljava/lang/String;
    :goto_0
    iget-object v10, p0, Lcom/android/settings_ex/SecuritySettings$SecuritySubSettings;->mLockAfter:Lcom/android/settings_ex/TimeoutListPreference;

    invoke-virtual {v10, v6}, Lcom/android/settings_ex/TimeoutListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1331
    return-void

    .line 1337
    .end local v6    # "summary":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/SecuritySettings$SecuritySubSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    .line 1338
    const-string/jumbo v11, "lock_screen_lock_after_timeout"

    const-wide/16 v12, 0x1388

    .line 1337
    invoke-static {v10, v11, v12, v13}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    .line 1339
    .local v2, "currentTimeout":J
    iget-object v10, p0, Lcom/android/settings_ex/SecuritySettings$SecuritySubSettings;->mLockAfter:Lcom/android/settings_ex/TimeoutListPreference;

    invoke-virtual {v10}, Lcom/android/settings_ex/TimeoutListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 1340
    .local v1, "entries":[Ljava/lang/CharSequence;
    iget-object v10, p0, Lcom/android/settings_ex/SecuritySettings$SecuritySubSettings;->mLockAfter:Lcom/android/settings_ex/TimeoutListPreference;

    invoke-virtual {v10}, Lcom/android/settings_ex/TimeoutListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v7

    .line 1341
    .local v7, "values":[Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .line 1342
    .local v0, "best":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    array-length v10, v7

    if-ge v4, v10, :cond_2

    .line 1343
    aget-object v10, v7, v4

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 1344
    .local v8, "timeout":J
    cmp-long v10, v2, v8

    if-ltz v10, :cond_1

    .line 1345
    move v0, v4

    .line 1342
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1349
    .end local v8    # "timeout":J
    :cond_2
    const-string/jumbo v10, "trust_agent"

    invoke-virtual {p0, v10}, Lcom/android/settings_ex/SecuritySettings$SecuritySubSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v5

    .line 1350
    .local v5, "preference":Landroid/support/v7/preference/Preference;
    if-eqz v5, :cond_4

    invoke-virtual {v5}, Landroid/support/v7/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    move-result v10

    if-lez v10, :cond_4

    .line 1351
    aget-object v10, v7, v0

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-nez v10, :cond_3

    .line 1352
    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    .line 1353
    invoke-virtual {v5}, Landroid/support/v7/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    .line 1352
    const v11, 0x7f0e05f4

    invoke-virtual {p0, v11, v10}, Lcom/android/settings_ex/SecuritySettings$SecuritySubSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "summary":Ljava/lang/String;
    goto :goto_0

    .line 1355
    .end local v6    # "summary":Ljava/lang/String;
    :cond_3
    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    .line 1356
    aget-object v11, v1, v0

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v5}, Landroid/support/v7/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v11

    const/4 v12, 0x1

    aput-object v11, v10, v12

    .line 1355
    const v11, 0x7f0e05f5

    invoke-virtual {p0, v11, v10}, Lcom/android/settings_ex/SecuritySettings$SecuritySubSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "summary":Ljava/lang/String;
    goto/16 :goto_0

    .line 1359
    .end local v6    # "summary":Ljava/lang/String;
    :cond_4
    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    aget-object v11, v1, v0

    const/4 v12, 0x0

    aput-object v11, v10, v12

    const v11, 0x7f0e05f3

    invoke-virtual {p0, v11, v10}, Lcom/android/settings_ex/SecuritySettings$SecuritySubSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "summary":Ljava/lang/String;
    goto/16 :goto_0
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 1213
    const/16 v0, 0x57

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 1244
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 1246
    invoke-direct {p0}, Lcom/android/settings_ex/SecuritySettings$SecuritySubSettings;->createPreferenceHierarchy()V

    .line 1243
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 1218
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 1219
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings_ex/SecuritySettings$SecuritySubSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings_ex/SecuritySettings$SecuritySubSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 1220
    invoke-virtual {p0}, Lcom/android/settings_ex/SecuritySettings$SecuritySubSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/settings_ex/SecuritySettings$SecuritySubSettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 1221
    invoke-direct {p0}, Lcom/android/settings_ex/SecuritySettings$SecuritySubSettings;->createPreferenceHierarchy()V

    .line 1217
    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 7
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x1

    .line 1403
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 1404
    .local v1, "key":Ljava/lang/String;
    const-string/jumbo v3, "power_button_instantly_locks"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1405
    iget-object v3, p0, Lcom/android/settings_ex/SecuritySettings$SecuritySubSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-static {}, Lcom/android/settings_ex/SecuritySettings;->-get0()I

    move-result v6

    invoke-virtual {v3, v5, v6}, Lcom/android/internal/widget/LockPatternUtils;->setPowerButtonInstantlyLocks(ZI)V

    .line 1424
    :cond_0
    :goto_0
    return v4

    .line 1406
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_1
    const-string/jumbo v3, "lock_after_timeout"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1407
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 1409
    .local v2, "timeout":I
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings_ex/SecuritySettings$SecuritySubSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 1410
    const-string/jumbo v5, "lock_screen_lock_after_timeout"

    .line 1409
    invoke-static {v3, v5, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1414
    :goto_1
    invoke-direct {p0}, Lcom/android/settings_ex/SecuritySettings$SecuritySubSettings;->setupLockAfterPreference()V

    .line 1415
    invoke-direct {p0}, Lcom/android/settings_ex/SecuritySettings$SecuritySubSettings;->updateLockAfterPreferenceSummary()V

    goto :goto_0

    .line 1411
    :catch_0
    move-exception v0

    .line 1412
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v3, "SecuritySettings"

    const-string/jumbo v5, "could not persist lockAfter timeout setting"

    invoke-static {v3, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1416
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v2    # "timeout":I
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_2
    const-string/jumbo v3, "visiblepattern"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1417
    iget-object v5, p0, Lcom/android/settings_ex/SecuritySettings$SecuritySubSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object v3, p2

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-static {}, Lcom/android/settings_ex/SecuritySettings;->-get0()I

    move-result v6

    invoke-virtual {v5, v3, v6}, Lcom/android/internal/widget/LockPatternUtils;->setVisiblePatternEnabled(ZI)V

    .line 1419
    invoke-virtual {p0}, Lcom/android/settings_ex/SecuritySettings$SecuritySubSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "show_password"

    move-object v3, p2

    .line 1420
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_3

    move v3, v4

    .line 1419
    :goto_2
    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1421
    iget-object v3, p0, Lcom/android/settings_ex/SecuritySettings$SecuritySubSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-static {}, Lcom/android/settings_ex/SecuritySettings;->-get0()I

    move-result v6

    invoke-virtual {v3, v5, v6}, Lcom/android/internal/widget/LockPatternUtils;->setVisiblePasswordEnabled(ZI)V

    goto :goto_0

    .line 1420
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_3
    const/4 v3, 0x0

    goto :goto_2
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 1226
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 1228
    invoke-direct {p0}, Lcom/android/settings_ex/SecuritySettings$SecuritySubSettings;->createPreferenceHierarchy()V

    .line 1230
    iget-object v0, p0, Lcom/android/settings_ex/SecuritySettings$SecuritySubSettings;->mVisiblePattern:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v0, :cond_0

    .line 1231
    iget-object v0, p0, Lcom/android/settings_ex/SecuritySettings$SecuritySubSettings;->mVisiblePattern:Landroid/support/v14/preference/SwitchPreference;

    iget-object v1, p0, Lcom/android/settings_ex/SecuritySettings$SecuritySubSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 1232
    invoke-static {}, Lcom/android/settings_ex/SecuritySettings;->-get0()I

    move-result v2

    .line 1231
    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->isVisiblePatternEnabled(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 1234
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/SecuritySettings$SecuritySubSettings;->mPowerButtonInstantlyLocks:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v0, :cond_1

    .line 1235
    iget-object v0, p0, Lcom/android/settings_ex/SecuritySettings$SecuritySubSettings;->mPowerButtonInstantlyLocks:Landroid/support/v14/preference/SwitchPreference;

    iget-object v1, p0, Lcom/android/settings_ex/SecuritySettings$SecuritySubSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 1236
    invoke-static {}, Lcom/android/settings_ex/SecuritySettings;->-get0()I

    move-result v2

    .line 1235
    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->getPowerButtonInstantlyLocks(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 1239
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/SecuritySettings$SecuritySubSettings;->updateOwnerInfo()V

    .line 1225
    return-void
.end method

.method public updateOwnerInfo()V
    .locals 3

    .prologue
    .line 1366
    iget-object v0, p0, Lcom/android/settings_ex/SecuritySettings$SecuritySubSettings;->mOwnerInfoPref:Lcom/android/settings_exlib/RestrictedPreference;

    if-eqz v0, :cond_0

    .line 1367
    iget-object v0, p0, Lcom/android/settings_ex/SecuritySettings$SecuritySubSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isDeviceOwnerInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1368
    iget-object v0, p0, Lcom/android/settings_ex/SecuritySettings$SecuritySubSettings;->mOwnerInfoPref:Lcom/android/settings_exlib/RestrictedPreference;

    .line 1369
    iget-object v1, p0, Lcom/android/settings_ex/SecuritySettings$SecuritySubSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->getDeviceOwnerInfo()Ljava/lang/String;

    move-result-object v1

    .line 1368
    invoke-virtual {v0, v1}, Lcom/android/settings_exlib/RestrictedPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1365
    :cond_0
    :goto_0
    return-void

    .line 1371
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/SecuritySettings$SecuritySubSettings;->mOwnerInfoPref:Lcom/android/settings_exlib/RestrictedPreference;

    iget-object v0, p0, Lcom/android/settings_ex/SecuritySettings$SecuritySubSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/settings_ex/SecuritySettings;->-get0()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/LockPatternUtils;->isOwnerInfoEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1372
    iget-object v0, p0, Lcom/android/settings_ex/SecuritySettings$SecuritySubSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/settings_ex/SecuritySettings;->-get0()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/LockPatternUtils;->getOwnerInfo(I)Ljava/lang/String;

    move-result-object v0

    .line 1371
    :goto_1
    invoke-virtual {v1, v0}, Lcom/android/settings_exlib/RestrictedPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1373
    :cond_2
    const v0, 0x7f0e05fa

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/SecuritySettings$SecuritySubSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method
