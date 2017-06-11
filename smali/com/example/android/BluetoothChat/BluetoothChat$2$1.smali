.class Lcom/example/android/BluetoothChat/BluetoothChat$2$1;
.super Ljava/lang/Object;
.source "BluetoothChat.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/android/BluetoothChat/BluetoothChat$2;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/example/android/BluetoothChat/BluetoothChat$2;


# direct methods
.method constructor <init>(Lcom/example/android/BluetoothChat/BluetoothChat$2;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2$1;->this$1:Lcom/example/android/BluetoothChat/BluetoothChat$2;

    .line 532
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 535
    iget-object v0, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2$1;->this$1:Lcom/example/android/BluetoothChat/BluetoothChat$2;

    # getter for: Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;
    invoke-static {v0}, Lcom/example/android/BluetoothChat/BluetoothChat$2;->access$0(Lcom/example/android/BluetoothChat/BluetoothChat$2;)Lcom/example/android/BluetoothChat/BluetoothChat;

    move-result-object v0

    iget v1, v0, Lcom/example/android/BluetoothChat/BluetoothChat;->SCR2:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/example/android/BluetoothChat/BluetoothChat;->SCR2:I

    .line 539
    iget-object v0, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2$1;->this$1:Lcom/example/android/BluetoothChat/BluetoothChat$2;

    # getter for: Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;
    invoke-static {v0}, Lcom/example/android/BluetoothChat/BluetoothChat$2;->access$0(Lcom/example/android/BluetoothChat/BluetoothChat$2;)Lcom/example/android/BluetoothChat/BluetoothChat;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/example/android/BluetoothChat/BluetoothChat;->reset(I)V

    .line 540
    return-void
.end method
