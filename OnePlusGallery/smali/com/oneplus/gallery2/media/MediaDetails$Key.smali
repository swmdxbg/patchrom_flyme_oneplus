.class public Lcom/oneplus/gallery2/media/MediaDetails$Key;
.super Ljava/lang/Object;
.source "MediaDetails.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery2/media/MediaDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Key"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 24
    .local p0, "this":Lcom/oneplus/gallery2/media/MediaDetails$Key;, "Lcom/oneplus/gallery2/media/MediaDetails$Key<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/oneplus/gallery2/media/MediaDetails$Key;->name:Ljava/lang/String;

    .line 26
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    .local p0, "this":Lcom/oneplus/gallery2/media/MediaDetails$Key;, "Lcom/oneplus/gallery2/media/MediaDetails$Key<TT;>;"
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaDetails$Key;->name:Ljava/lang/String;

    return-object v0
.end method
