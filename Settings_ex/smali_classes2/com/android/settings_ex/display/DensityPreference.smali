.class public Lcom/android/settings_ex/display/DensityPreference;
.super Lcom/android/settings_ex/CustomEditTextPreference;
.source "DensityPreference.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DensityPreference"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/CustomEditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    return-void
.end method

.method private getCurrentSwDp()I
    .locals 6

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/android/settings_ex/display/DensityPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 46
    .local v3, "res":Landroid/content/res/Resources;
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 47
    .local v1, "metrics":Landroid/util/DisplayMetrics;
    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 48
    .local v0, "density":F
    iget v4, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v5, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 49
    .local v2, "minDimensionPx":I
    int-to-float v4, v2

    div-float/2addr v4, v0

    float-to-int v4, v4

    return v4
.end method


# virtual methods
.method public onAttached()V
    .locals 4

    .prologue
    .line 39
    invoke-super {p0}, Lcom/android/settings_ex/CustomEditTextPreference;->onAttached()V

    .line 41
    invoke-virtual {p0}, Lcom/android/settings_ex/display/DensityPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0}, Lcom/android/settings_ex/display/DensityPreference;->getCurrentSwDp()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const v2, 0x7f0e105d

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/display/DensityPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 38
    return-void
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 54
    invoke-super {p0, p1}, Lcom/android/settings_ex/CustomEditTextPreference;->onBindDialogView(Landroid/view/View;)V

    .line 56
    const v1, 0x1020003

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 58
    .local v0, "editText":Landroid/widget/EditText;
    if-eqz v0, :cond_0

    .line 59
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 60
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/android/settings_ex/display/DensityPreference;->getCurrentSwDp()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 53
    :cond_0
    return-void
.end method

.method protected onDialogClosed(Z)V
    .locals 9
    .param p1, "positiveResult"    # Z

    .prologue
    .line 66
    if-eqz p1, :cond_0

    .line 68
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings_ex/display/DensityPreference;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 69
    .local v6, "res":Landroid/content/res/Resources;
    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 70
    .local v2, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/android/settings_ex/display/DensityPreference;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    const/16 v8, 0x140

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 71
    .local v5, "newSwDp":I
    iget v7, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v8, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 72
    .local v3, "minDimensionPx":I
    mul-int/lit16 v7, v3, 0xa0

    div-int v4, v7, v5

    .line 73
    .local v4, "newDensity":I
    const/16 v7, 0x78

    invoke-static {v4, v7}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 74
    .local v0, "densityDpi":I
    const/4 v7, 0x0

    invoke-static {v7, v0}, Lcom/android/settings_exlib/display/DisplayDensityUtils;->setForcedDisplayDensity(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    .end local v0    # "densityDpi":I
    .end local v2    # "metrics":Landroid/util/DisplayMetrics;
    .end local v3    # "minDimensionPx":I
    .end local v4    # "newDensity":I
    .end local v5    # "newSwDp":I
    .end local v6    # "res":Landroid/content/res/Resources;
    :cond_0
    :goto_0
    return-void

    .line 75
    :catch_0
    move-exception v1

    .line 77
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v7, "DensityPreference"

    const-string/jumbo v8, "Couldn\'t save density"

    invoke-static {v7, v8, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
