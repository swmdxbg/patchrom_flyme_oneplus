.class final enum Lcom/oneplus/gallery2/VideoPlayerActivity$ViewVisibilityState;
.super Ljava/lang/Enum;
.source "VideoPlayerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery2/VideoPlayerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ViewVisibilityState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oneplus/gallery2/VideoPlayerActivity$ViewVisibilityState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oneplus/gallery2/VideoPlayerActivity$ViewVisibilityState;

.field public static final enum INVISIBLE:Lcom/oneplus/gallery2/VideoPlayerActivity$ViewVisibilityState;

.field public static final enum IN_ANIMATING:Lcom/oneplus/gallery2/VideoPlayerActivity$ViewVisibilityState;

.field public static final enum OUT_ANIMATING:Lcom/oneplus/gallery2/VideoPlayerActivity$ViewVisibilityState;

.field public static final enum VISIBLE:Lcom/oneplus/gallery2/VideoPlayerActivity$ViewVisibilityState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 160
    new-instance v0, Lcom/oneplus/gallery2/VideoPlayerActivity$ViewVisibilityState;

    const-string v1, "IN_ANIMATING"

    invoke-direct {v0, v1, v2}, Lcom/oneplus/gallery2/VideoPlayerActivity$ViewVisibilityState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/gallery2/VideoPlayerActivity$ViewVisibilityState;->IN_ANIMATING:Lcom/oneplus/gallery2/VideoPlayerActivity$ViewVisibilityState;

    .line 161
    new-instance v0, Lcom/oneplus/gallery2/VideoPlayerActivity$ViewVisibilityState;

    const-string v1, "VISIBLE"

    invoke-direct {v0, v1, v3}, Lcom/oneplus/gallery2/VideoPlayerActivity$ViewVisibilityState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/gallery2/VideoPlayerActivity$ViewVisibilityState;->VISIBLE:Lcom/oneplus/gallery2/VideoPlayerActivity$ViewVisibilityState;

    .line 162
    new-instance v0, Lcom/oneplus/gallery2/VideoPlayerActivity$ViewVisibilityState;

    const-string v1, "OUT_ANIMATING"

    invoke-direct {v0, v1, v4}, Lcom/oneplus/gallery2/VideoPlayerActivity$ViewVisibilityState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/gallery2/VideoPlayerActivity$ViewVisibilityState;->OUT_ANIMATING:Lcom/oneplus/gallery2/VideoPlayerActivity$ViewVisibilityState;

    .line 163
    new-instance v0, Lcom/oneplus/gallery2/VideoPlayerActivity$ViewVisibilityState;

    const-string v1, "INVISIBLE"

    invoke-direct {v0, v1, v5}, Lcom/oneplus/gallery2/VideoPlayerActivity$ViewVisibilityState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/gallery2/VideoPlayerActivity$ViewVisibilityState;->INVISIBLE:Lcom/oneplus/gallery2/VideoPlayerActivity$ViewVisibilityState;

    .line 158
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/oneplus/gallery2/VideoPlayerActivity$ViewVisibilityState;

    sget-object v1, Lcom/oneplus/gallery2/VideoPlayerActivity$ViewVisibilityState;->IN_ANIMATING:Lcom/oneplus/gallery2/VideoPlayerActivity$ViewVisibilityState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oneplus/gallery2/VideoPlayerActivity$ViewVisibilityState;->VISIBLE:Lcom/oneplus/gallery2/VideoPlayerActivity$ViewVisibilityState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oneplus/gallery2/VideoPlayerActivity$ViewVisibilityState;->OUT_ANIMATING:Lcom/oneplus/gallery2/VideoPlayerActivity$ViewVisibilityState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oneplus/gallery2/VideoPlayerActivity$ViewVisibilityState;->INVISIBLE:Lcom/oneplus/gallery2/VideoPlayerActivity$ViewVisibilityState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/oneplus/gallery2/VideoPlayerActivity$ViewVisibilityState;->$VALUES:[Lcom/oneplus/gallery2/VideoPlayerActivity$ViewVisibilityState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 158
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oneplus/gallery2/VideoPlayerActivity$ViewVisibilityState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 158
    const-class v0, Lcom/oneplus/gallery2/VideoPlayerActivity$ViewVisibilityState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/VideoPlayerActivity$ViewVisibilityState;

    return-object v0
.end method

.method public static values()[Lcom/oneplus/gallery2/VideoPlayerActivity$ViewVisibilityState;
    .locals 1

    .prologue
    .line 158
    sget-object v0, Lcom/oneplus/gallery2/VideoPlayerActivity$ViewVisibilityState;->$VALUES:[Lcom/oneplus/gallery2/VideoPlayerActivity$ViewVisibilityState;

    invoke-virtual {v0}, [Lcom/oneplus/gallery2/VideoPlayerActivity$ViewVisibilityState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oneplus/gallery2/VideoPlayerActivity$ViewVisibilityState;

    return-object v0
.end method
