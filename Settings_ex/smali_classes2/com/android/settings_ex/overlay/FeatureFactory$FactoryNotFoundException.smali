.class public final Lcom/android/settings_ex/overlay/FeatureFactory$FactoryNotFoundException;
.super Ljava/lang/RuntimeException;
.source "FeatureFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/overlay/FeatureFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FactoryNotFoundException"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 66
    const-string/jumbo v0, "Unable to create factory. Did you misconfigure Proguard?"

    invoke-direct {p0, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 65
    return-void
.end method
