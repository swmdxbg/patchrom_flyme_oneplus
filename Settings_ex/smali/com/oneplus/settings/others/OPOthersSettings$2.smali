.class Lcom/oneplus/settings/others/OPOthersSettings$2;
.super Ljava/lang/Thread;
.source "OPOthersSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/others/OPOthersSettings;->handleOTGStatus(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/others/OPOthersSettings;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/others/OPOthersSettings;Ljava/lang/String;)V
    .locals 0
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 214
    iput-object p1, p0, Lcom/oneplus/settings/others/OPOthersSettings$2;->this$0:Lcom/oneplus/settings/others/OPOthersSettings;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 21

    .prologue
    .line 217
    const/16 v14, 0x30

    .line 218
    .local v14, "otg_status":I
    const-string v18, "ro.board.platform"

    const-string v19, "NONE"

    invoke-static/range {v18 .. v19}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 220
    .local v16, "platform":Ljava/lang/String;
    new-instance v13, Landroid/os/Message;

    invoke-direct {v13}, Landroid/os/Message;-><init>()V

    .line 221
    .local v13, "m":Landroid/os/Message;
    const/16 v18, 0x2704

    move/from16 v0, v18

    iput v0, v13, Landroid/os/Message;->what:I

    .line 223
    const-string v18, "msm8996"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 224
    const-string v3, "/sys/module/dwc3_msm/parameters/otg_state"

    .line 225
    .local v3, "checkpath":Ljava/lang/String;
    const-string v4, "/sys/devices/soc/6a00000.ssusb/6a00000.dwc3/xhci-hcd.0.auto/usb1/1-1/1-1:1.0/"

    .line 226
    .local v4, "createpath":Ljava/lang/String;
    const-string v5, "/sys/devices/soc/6a00000.ssusb/6a00000.dwc3/xhci-hcd.0.auto/"

    .line 240
    .local v5, "delpath":Ljava/lang/String;
    :goto_0
    const/4 v11, 0x0

    .line 242
    .local v11, "fr":Ljava/io/FileReader;
    :try_start_0
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 243
    .local v8, "filecheck":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v18

    if-eqz v18, :cond_3

    .line 244
    new-instance v12, Ljava/io/FileReader;

    invoke-direct {v12, v3}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .end local v11    # "fr":Ljava/io/FileReader;
    .local v12, "fr":Ljava/io/FileReader;
    move-object v11, v12

    .line 249
    .end local v12    # "fr":Ljava/io/FileReader;
    .restart local v11    # "fr":Ljava/io/FileReader;
    :goto_1
    if-eqz v11, :cond_0

    .line 250
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 251
    .local v2, "br":Ljava/io/BufferedReader;
    invoke-virtual {v2}, Ljava/io/BufferedReader;->read()I

    move-result v14

    .line 252
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 257
    .end local v2    # "br":Ljava/io/BufferedReader;
    .end local v8    # "filecheck":Ljava/io/File;
    :cond_0
    :goto_2
    const/16 v18, 0x31

    move/from16 v0, v18

    if-ne v14, v0, :cond_7

    .line 258
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 259
    .local v9, "filecreate":Ljava/io/File;
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 260
    .local v10, "filedelete":Ljava/io/File;
    const-string v18, "persist.sys.oem.otg_support"

    const-string v19, "false"

    invoke-static/range {v18 .. v19}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v15

    .line 262
    .local v15, "otgstatus":Z
    const/16 v17, 0x1

    .line 264
    .local v17, "times":I
    :goto_3
    if-eqz v15, :cond_5

    .line 265
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v18

    if-nez v18, :cond_4

    .line 267
    const-wide/16 v18, 0x12c

    :try_start_1
    invoke-static/range {v18 .. v19}, Ljava/lang/Thread;->sleep(J)V

    .line 268
    const-string v18, "OTG"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " isn\'t exist! wait 300 ms, "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " times!"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 269
    add-int/lit8 v17, v17, 0x1

    goto :goto_3

    .line 228
    .end local v3    # "checkpath":Ljava/lang/String;
    .end local v4    # "createpath":Ljava/lang/String;
    .end local v5    # "delpath":Ljava/lang/String;
    .end local v9    # "filecreate":Ljava/io/File;
    .end local v10    # "filedelete":Ljava/io/File;
    .end local v11    # "fr":Ljava/io/FileReader;
    .end local v15    # "otgstatus":Z
    .end local v17    # "times":I
    :cond_1
    const-string v18, "msm8994"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 229
    const-string v3, "/sys/module/dwc3/parameters/otg_state"

    .line 230
    .restart local v3    # "checkpath":Ljava/lang/String;
    const-string v4, "/sys/devices/soc.0/f9200000.ssusb/f9200000.dwc3/xhci-hcd.0.auto/usb1/1-1/1-1:1.0/"

    .line 231
    .restart local v4    # "createpath":Ljava/lang/String;
    const-string v5, "/sys/devices/soc.0/f9200000.ssusb/f9200000.dwc3/xhci-hcd.0.auto/"

    .restart local v5    # "delpath":Ljava/lang/String;
    goto/16 :goto_0

    .line 234
    .end local v3    # "checkpath":Ljava/lang/String;
    .end local v4    # "createpath":Ljava/lang/String;
    .end local v5    # "delpath":Ljava/lang/String;
    :cond_2
    const-string v3, "/sys/module/dwc3/parameters/otg_state"

    .line 235
    .restart local v3    # "checkpath":Ljava/lang/String;
    const-string v4, "/sys/devices/platform/xhci-hcd/usb1/1-1/1-1:1.0/"

    .line 236
    .restart local v4    # "createpath":Ljava/lang/String;
    const-string v5, "/sys/devices/platform/xhci-hcd/"

    .restart local v5    # "delpath":Ljava/lang/String;
    goto/16 :goto_0

    .line 247
    .restart local v8    # "filecheck":Ljava/io/File;
    .restart local v11    # "fr":Ljava/io/FileReader;
    :cond_3
    :try_start_2
    new-instance v12, Ljava/io/FileReader;

    const-string v18, "/proc/otg_config/otg_status"

    move-object/from16 v0, v18

    invoke-direct {v12, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .end local v11    # "fr":Ljava/io/FileReader;
    .restart local v12    # "fr":Ljava/io/FileReader;
    move-object v11, v12

    .end local v12    # "fr":Ljava/io/FileReader;
    .restart local v11    # "fr":Ljava/io/FileReader;
    goto/16 :goto_1

    .line 254
    .end local v8    # "filecheck":Ljava/io/File;
    :catch_0
    move-exception v6

    .line 255
    .local v6, "e":Ljava/io/IOException;
    const-string v18, "OTG"

    const-string v19, "otg_status missing"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    .line 270
    .end local v6    # "e":Ljava/io/IOException;
    .restart local v9    # "filecreate":Ljava/io/File;
    .restart local v10    # "filedelete":Ljava/io/File;
    .restart local v15    # "otgstatus":Z
    .restart local v17    # "times":I
    :catch_1
    move-exception v7

    .line 271
    .local v7, "ex":Ljava/lang/InterruptedException;
    const-string v18, "OTG"

    const-string v19, "xhci-hcd exception"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 275
    .end local v7    # "ex":Ljava/lang/InterruptedException;
    :cond_4
    const-wide/16 v18, 0xc8

    :try_start_3
    invoke-static/range {v18 .. v19}, Ljava/lang/Thread;->sleep(J)V

    .line 276
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/settings/others/OPOthersSettings$2;->this$0:Lcom/oneplus/settings/others/OPOthersSettings;

    move-object/from16 v18, v0

    # getter for: Lcom/oneplus/settings/others/OPOthersSettings;->handler:Landroid/os/Handler;
    invoke-static/range {v18 .. v18}, Lcom/oneplus/settings/others/OPOthersSettings;->access$300(Lcom/oneplus/settings/others/OPOthersSettings;)Landroid/os/Handler;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_2

    .line 305
    .end local v9    # "filecreate":Ljava/io/File;
    .end local v10    # "filedelete":Ljava/io/File;
    .end local v15    # "otgstatus":Z
    .end local v17    # "times":I
    :goto_4
    return-void

    .line 277
    .restart local v9    # "filecreate":Ljava/io/File;
    .restart local v10    # "filedelete":Ljava/io/File;
    .restart local v15    # "otgstatus":Z
    .restart local v17    # "times":I
    :catch_2
    move-exception v7

    .line 278
    .restart local v7    # "ex":Ljava/lang/InterruptedException;
    const-string v18, "OTG"

    const-string v19, "xhci-hcd exception"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 283
    .end local v7    # "ex":Ljava/lang/InterruptedException;
    :cond_5
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v18

    if-eqz v18, :cond_6

    .line 285
    :try_start_4
    const-string v18, "OTG"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " is exist! wait 300 ms, "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " times!"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    add-int/lit8 v17, v17, 0x1

    .line 287
    const-wide/16 v18, 0x12c

    invoke-static/range {v18 .. v19}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_3

    .line 288
    :catch_3
    move-exception v7

    .line 289
    .restart local v7    # "ex":Ljava/lang/InterruptedException;
    const-string v18, "OTG"

    const-string v19, "xhci-hcd exception"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .line 293
    .end local v7    # "ex":Ljava/lang/InterruptedException;
    :cond_6
    const-wide/16 v18, 0xc8

    :try_start_5
    invoke-static/range {v18 .. v19}, Ljava/lang/Thread;->sleep(J)V

    .line 294
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/settings/others/OPOthersSettings$2;->this$0:Lcom/oneplus/settings/others/OPOthersSettings;

    move-object/from16 v18, v0

    # getter for: Lcom/oneplus/settings/others/OPOthersSettings;->handler:Landroid/os/Handler;
    invoke-static/range {v18 .. v18}, Lcom/oneplus/settings/others/OPOthersSettings;->access$300(Lcom/oneplus/settings/others/OPOthersSettings;)Landroid/os/Handler;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_4

    .line 295
    :catch_4
    move-exception v7

    .line 296
    .restart local v7    # "ex":Ljava/lang/InterruptedException;
    const-string v18, "OTG"

    const-string v19, "xhci-hcd exception"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 303
    .end local v7    # "ex":Ljava/lang/InterruptedException;
    .end local v9    # "filecreate":Ljava/io/File;
    .end local v10    # "filedelete":Ljava/io/File;
    .end local v15    # "otgstatus":Z
    .end local v17    # "times":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/settings/others/OPOthersSettings$2;->this$0:Lcom/oneplus/settings/others/OPOthersSettings;

    move-object/from16 v18, v0

    # getter for: Lcom/oneplus/settings/others/OPOthersSettings;->handler:Landroid/os/Handler;
    invoke-static/range {v18 .. v18}, Lcom/oneplus/settings/others/OPOthersSettings;->access$300(Lcom/oneplus/settings/others/OPOthersSettings;)Landroid/os/Handler;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_4
.end method
