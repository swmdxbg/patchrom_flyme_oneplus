.class final Lcom/oneplus/gallery/providers/GalleryDatabaseManager$5;
.super Ljava/lang/Object;
.source "GalleryDatabaseManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->onAlbumInserted(Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$albumInfo:Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumInfo;

.field final synthetic val$listener:Lcom/oneplus/gallery/providers/GalleryDatabaseManager$GalleryDataChangedListener;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/providers/GalleryDatabaseManager$GalleryDataChangedListener;Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumInfo;)V
    .locals 0

    .prologue
    .line 1129
    iput-object p1, p0, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$5;->val$listener:Lcom/oneplus/gallery/providers/GalleryDatabaseManager$GalleryDataChangedListener;

    iput-object p2, p0, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$5;->val$albumInfo:Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1133
    iget-object v0, p0, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$5;->val$listener:Lcom/oneplus/gallery/providers/GalleryDatabaseManager$GalleryDataChangedListener;

    iget-object v1, p0, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$5;->val$albumInfo:Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumInfo;

    invoke-interface {v0, v1}, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$GalleryDataChangedListener;->onInserted(Ljava/lang/Object;)V

    .line 1134
    return-void
.end method
