.class Lcom/oneplus/base/component/ComponentUtils$3;
.super Ljava/lang/Object;
.source "ComponentUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/base/component/ComponentUtils;->findComponent(Lcom/oneplus/base/component/ComponentOwner;Ljava/lang/Class;Lcom/oneplus/base/HandlerObject;Lcom/oneplus/base/component/ComponentSearchCallback;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$callback:Lcom/oneplus/base/component/ComponentSearchCallback;

.field private final synthetic val$callbackTarget:Lcom/oneplus/base/HandlerObject;

.field private final synthetic val$componentType:Ljava/lang/Class;

.field private final synthetic val$owner:Lcom/oneplus/base/component/ComponentOwner;


# direct methods
.method constructor <init>(Lcom/oneplus/base/component/ComponentOwner;Ljava/lang/Class;Lcom/oneplus/base/HandlerObject;Lcom/oneplus/base/component/ComponentSearchCallback;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/oneplus/base/component/ComponentUtils$3;->val$owner:Lcom/oneplus/base/component/ComponentOwner;

    iput-object p2, p0, Lcom/oneplus/base/component/ComponentUtils$3;->val$componentType:Ljava/lang/Class;

    iput-object p3, p0, Lcom/oneplus/base/component/ComponentUtils$3;->val$callbackTarget:Lcom/oneplus/base/HandlerObject;

    iput-object p4, p0, Lcom/oneplus/base/component/ComponentUtils$3;->val$callback:Lcom/oneplus/base/component/ComponentSearchCallback;

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 91
    iget-object v0, p0, Lcom/oneplus/base/component/ComponentUtils$3;->val$owner:Lcom/oneplus/base/component/ComponentOwner;

    iget-object v1, p0, Lcom/oneplus/base/component/ComponentUtils$3;->val$componentType:Ljava/lang/Class;

    iget-object v2, p0, Lcom/oneplus/base/component/ComponentUtils$3;->val$callbackTarget:Lcom/oneplus/base/HandlerObject;

    iget-object v3, p0, Lcom/oneplus/base/component/ComponentUtils$3;->val$callback:Lcom/oneplus/base/component/ComponentSearchCallback;

    invoke-static {v0, v1, v2, v3}, Lcom/oneplus/base/component/ComponentUtils;->findComponent(Lcom/oneplus/base/component/ComponentOwner;Ljava/lang/Class;Lcom/oneplus/base/HandlerObject;Lcom/oneplus/base/component/ComponentSearchCallback;)Z

    .line 92
    return-void
.end method
