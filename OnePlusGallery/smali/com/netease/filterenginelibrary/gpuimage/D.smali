.class Lcom/netease/filterenginelibrary/gpuimage/D;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/netease/filterenginelibrary/gpuimage/y;

.field private final synthetic b:I

.field private final synthetic c:[F


# direct methods
.method constructor <init>(Lcom/netease/filterenginelibrary/gpuimage/y;I[F)V
    .locals 0

    iput-object p1, p0, Lcom/netease/filterenginelibrary/gpuimage/D;->a:Lcom/netease/filterenginelibrary/gpuimage/y;

    iput p2, p0, Lcom/netease/filterenginelibrary/gpuimage/D;->b:I

    iput-object p3, p0, Lcom/netease/filterenginelibrary/gpuimage/D;->c:[F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget v0, p0, Lcom/netease/filterenginelibrary/gpuimage/D;->b:I

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/netease/filterenginelibrary/gpuimage/D;->c:[F

    invoke-static {v2}, Ljava/nio/FloatBuffer;->wrap([F)Ljava/nio/FloatBuffer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glUniform4fv(IILjava/nio/FloatBuffer;)V

    return-void
.end method
