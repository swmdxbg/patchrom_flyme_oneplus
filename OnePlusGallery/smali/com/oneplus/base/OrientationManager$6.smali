.class Lcom/oneplus/base/OrientationManager$6;
.super Lcom/oneplus/base/Handle;
.source "OrientationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/base/OrientationManager;->startOrientationSensor(Landroid/content/Context;)Lcom/oneplus/base/Handle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "$anonymous0"    # Ljava/lang/String;

    .prologue
    .line 344
    invoke-direct {p0, p1}, Lcom/oneplus/base/Handle;-><init>(Ljava/lang/String;)V

    .line 1
    return-void
.end method


# virtual methods
.method protected onClose(I)V
    .locals 0
    .param p1, "flags"    # I

    .prologue
    .line 349
    # invokes: Lcom/oneplus/base/OrientationManager;->stopOrientationSensor(Lcom/oneplus/base/Handle;)V
    invoke-static {p0}, Lcom/oneplus/base/OrientationManager;->access$6(Lcom/oneplus/base/Handle;)V

    .line 350
    return-void
.end method
