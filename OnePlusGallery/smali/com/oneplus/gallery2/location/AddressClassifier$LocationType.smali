.class public final enum Lcom/oneplus/gallery2/location/AddressClassifier$LocationType;
.super Ljava/lang/Enum;
.source "AddressClassifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery2/location/AddressClassifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LocationType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oneplus/gallery2/location/AddressClassifier$LocationType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oneplus/gallery2/location/AddressClassifier$LocationType;

.field public static final enum ADMIN_AREA:Lcom/oneplus/gallery2/location/AddressClassifier$LocationType;

.field public static final enum COUNTRY:Lcom/oneplus/gallery2/location/AddressClassifier$LocationType;

.field public static final enum LOCALITY:Lcom/oneplus/gallery2/location/AddressClassifier$LocationType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 29
    new-instance v0, Lcom/oneplus/gallery2/location/AddressClassifier$LocationType;

    const-string v1, "COUNTRY"

    invoke-direct {v0, v1, v2}, Lcom/oneplus/gallery2/location/AddressClassifier$LocationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/gallery2/location/AddressClassifier$LocationType;->COUNTRY:Lcom/oneplus/gallery2/location/AddressClassifier$LocationType;

    .line 33
    new-instance v0, Lcom/oneplus/gallery2/location/AddressClassifier$LocationType;

    const-string v1, "ADMIN_AREA"

    invoke-direct {v0, v1, v3}, Lcom/oneplus/gallery2/location/AddressClassifier$LocationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/gallery2/location/AddressClassifier$LocationType;->ADMIN_AREA:Lcom/oneplus/gallery2/location/AddressClassifier$LocationType;

    .line 37
    new-instance v0, Lcom/oneplus/gallery2/location/AddressClassifier$LocationType;

    const-string v1, "LOCALITY"

    invoke-direct {v0, v1, v4}, Lcom/oneplus/gallery2/location/AddressClassifier$LocationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/gallery2/location/AddressClassifier$LocationType;->LOCALITY:Lcom/oneplus/gallery2/location/AddressClassifier$LocationType;

    .line 24
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/oneplus/gallery2/location/AddressClassifier$LocationType;

    sget-object v1, Lcom/oneplus/gallery2/location/AddressClassifier$LocationType;->COUNTRY:Lcom/oneplus/gallery2/location/AddressClassifier$LocationType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oneplus/gallery2/location/AddressClassifier$LocationType;->ADMIN_AREA:Lcom/oneplus/gallery2/location/AddressClassifier$LocationType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oneplus/gallery2/location/AddressClassifier$LocationType;->LOCALITY:Lcom/oneplus/gallery2/location/AddressClassifier$LocationType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/oneplus/gallery2/location/AddressClassifier$LocationType;->$VALUES:[Lcom/oneplus/gallery2/location/AddressClassifier$LocationType;

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
    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oneplus/gallery2/location/AddressClassifier$LocationType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 24
    const-class v0, Lcom/oneplus/gallery2/location/AddressClassifier$LocationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/location/AddressClassifier$LocationType;

    return-object v0
.end method

.method public static values()[Lcom/oneplus/gallery2/location/AddressClassifier$LocationType;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/oneplus/gallery2/location/AddressClassifier$LocationType;->$VALUES:[Lcom/oneplus/gallery2/location/AddressClassifier$LocationType;

    invoke-virtual {v0}, [Lcom/oneplus/gallery2/location/AddressClassifier$LocationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oneplus/gallery2/location/AddressClassifier$LocationType;

    return-object v0
.end method
