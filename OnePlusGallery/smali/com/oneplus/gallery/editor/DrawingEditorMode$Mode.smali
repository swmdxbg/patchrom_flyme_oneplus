.class final enum Lcom/oneplus/gallery/editor/DrawingEditorMode$Mode;
.super Ljava/lang/Enum;
.source "DrawingEditorMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery/editor/DrawingEditorMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Mode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oneplus/gallery/editor/DrawingEditorMode$Mode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oneplus/gallery/editor/DrawingEditorMode$Mode;

.field public static final enum DRAWING:Lcom/oneplus/gallery/editor/DrawingEditorMode$Mode;

.field public static final enum MOVING:Lcom/oneplus/gallery/editor/DrawingEditorMode$Mode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 95
    new-instance v0, Lcom/oneplus/gallery/editor/DrawingEditorMode$Mode;

    const-string v1, "DRAWING"

    invoke-direct {v0, v1, v2}, Lcom/oneplus/gallery/editor/DrawingEditorMode$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/gallery/editor/DrawingEditorMode$Mode;->DRAWING:Lcom/oneplus/gallery/editor/DrawingEditorMode$Mode;

    .line 96
    new-instance v0, Lcom/oneplus/gallery/editor/DrawingEditorMode$Mode;

    const-string v1, "MOVING"

    invoke-direct {v0, v1, v3}, Lcom/oneplus/gallery/editor/DrawingEditorMode$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/gallery/editor/DrawingEditorMode$Mode;->MOVING:Lcom/oneplus/gallery/editor/DrawingEditorMode$Mode;

    .line 93
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/oneplus/gallery/editor/DrawingEditorMode$Mode;

    sget-object v1, Lcom/oneplus/gallery/editor/DrawingEditorMode$Mode;->DRAWING:Lcom/oneplus/gallery/editor/DrawingEditorMode$Mode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oneplus/gallery/editor/DrawingEditorMode$Mode;->MOVING:Lcom/oneplus/gallery/editor/DrawingEditorMode$Mode;

    aput-object v1, v0, v3

    sput-object v0, Lcom/oneplus/gallery/editor/DrawingEditorMode$Mode;->$VALUES:[Lcom/oneplus/gallery/editor/DrawingEditorMode$Mode;

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
    .line 93
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oneplus/gallery/editor/DrawingEditorMode$Mode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 93
    const-class v0, Lcom/oneplus/gallery/editor/DrawingEditorMode$Mode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/editor/DrawingEditorMode$Mode;

    return-object v0
.end method

.method public static values()[Lcom/oneplus/gallery/editor/DrawingEditorMode$Mode;
    .locals 1

    .prologue
    .line 93
    sget-object v0, Lcom/oneplus/gallery/editor/DrawingEditorMode$Mode;->$VALUES:[Lcom/oneplus/gallery/editor/DrawingEditorMode$Mode;

    invoke-virtual {v0}, [Lcom/oneplus/gallery/editor/DrawingEditorMode$Mode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oneplus/gallery/editor/DrawingEditorMode$Mode;

    return-object v0
.end method
