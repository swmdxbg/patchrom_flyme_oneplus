.class final enum Lcom/oneplus/gallery2/GridViewFragment$AutoScrollDirection;
.super Ljava/lang/Enum;
.source "GridViewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery2/GridViewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "AutoScrollDirection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oneplus/gallery2/GridViewFragment$AutoScrollDirection;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oneplus/gallery2/GridViewFragment$AutoScrollDirection;

.field public static final enum DOWN:Lcom/oneplus/gallery2/GridViewFragment$AutoScrollDirection;

.field public static final enum DOWN_FAST:Lcom/oneplus/gallery2/GridViewFragment$AutoScrollDirection;

.field public static final enum NONE:Lcom/oneplus/gallery2/GridViewFragment$AutoScrollDirection;

.field public static final enum UP:Lcom/oneplus/gallery2/GridViewFragment$AutoScrollDirection;

.field public static final enum UP_FAST:Lcom/oneplus/gallery2/GridViewFragment$AutoScrollDirection;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 171
    new-instance v0, Lcom/oneplus/gallery2/GridViewFragment$AutoScrollDirection;

    const-string v1, "DOWN"

    invoke-direct {v0, v1, v2}, Lcom/oneplus/gallery2/GridViewFragment$AutoScrollDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/gallery2/GridViewFragment$AutoScrollDirection;->DOWN:Lcom/oneplus/gallery2/GridViewFragment$AutoScrollDirection;

    .line 172
    new-instance v0, Lcom/oneplus/gallery2/GridViewFragment$AutoScrollDirection;

    const-string v1, "DOWN_FAST"

    invoke-direct {v0, v1, v3}, Lcom/oneplus/gallery2/GridViewFragment$AutoScrollDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/gallery2/GridViewFragment$AutoScrollDirection;->DOWN_FAST:Lcom/oneplus/gallery2/GridViewFragment$AutoScrollDirection;

    .line 173
    new-instance v0, Lcom/oneplus/gallery2/GridViewFragment$AutoScrollDirection;

    const-string v1, "UP"

    invoke-direct {v0, v1, v4}, Lcom/oneplus/gallery2/GridViewFragment$AutoScrollDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/gallery2/GridViewFragment$AutoScrollDirection;->UP:Lcom/oneplus/gallery2/GridViewFragment$AutoScrollDirection;

    .line 174
    new-instance v0, Lcom/oneplus/gallery2/GridViewFragment$AutoScrollDirection;

    const-string v1, "UP_FAST"

    invoke-direct {v0, v1, v5}, Lcom/oneplus/gallery2/GridViewFragment$AutoScrollDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/gallery2/GridViewFragment$AutoScrollDirection;->UP_FAST:Lcom/oneplus/gallery2/GridViewFragment$AutoScrollDirection;

    .line 175
    new-instance v0, Lcom/oneplus/gallery2/GridViewFragment$AutoScrollDirection;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v6}, Lcom/oneplus/gallery2/GridViewFragment$AutoScrollDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/gallery2/GridViewFragment$AutoScrollDirection;->NONE:Lcom/oneplus/gallery2/GridViewFragment$AutoScrollDirection;

    .line 170
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/oneplus/gallery2/GridViewFragment$AutoScrollDirection;

    sget-object v1, Lcom/oneplus/gallery2/GridViewFragment$AutoScrollDirection;->DOWN:Lcom/oneplus/gallery2/GridViewFragment$AutoScrollDirection;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oneplus/gallery2/GridViewFragment$AutoScrollDirection;->DOWN_FAST:Lcom/oneplus/gallery2/GridViewFragment$AutoScrollDirection;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oneplus/gallery2/GridViewFragment$AutoScrollDirection;->UP:Lcom/oneplus/gallery2/GridViewFragment$AutoScrollDirection;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oneplus/gallery2/GridViewFragment$AutoScrollDirection;->UP_FAST:Lcom/oneplus/gallery2/GridViewFragment$AutoScrollDirection;

    aput-object v1, v0, v5

    sget-object v1, Lcom/oneplus/gallery2/GridViewFragment$AutoScrollDirection;->NONE:Lcom/oneplus/gallery2/GridViewFragment$AutoScrollDirection;

    aput-object v1, v0, v6

    sput-object v0, Lcom/oneplus/gallery2/GridViewFragment$AutoScrollDirection;->$VALUES:[Lcom/oneplus/gallery2/GridViewFragment$AutoScrollDirection;

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
    .line 170
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oneplus/gallery2/GridViewFragment$AutoScrollDirection;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 170
    const-class v0, Lcom/oneplus/gallery2/GridViewFragment$AutoScrollDirection;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/GridViewFragment$AutoScrollDirection;

    return-object v0
.end method

.method public static values()[Lcom/oneplus/gallery2/GridViewFragment$AutoScrollDirection;
    .locals 1

    .prologue
    .line 170
    sget-object v0, Lcom/oneplus/gallery2/GridViewFragment$AutoScrollDirection;->$VALUES:[Lcom/oneplus/gallery2/GridViewFragment$AutoScrollDirection;

    invoke-virtual {v0}, [Lcom/oneplus/gallery2/GridViewFragment$AutoScrollDirection;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oneplus/gallery2/GridViewFragment$AutoScrollDirection;

    return-object v0
.end method
