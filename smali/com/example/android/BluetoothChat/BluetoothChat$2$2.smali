.class Lcom/example/android/BluetoothChat/BluetoothChat$2$2;
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
    iput-object p1, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2$2;->this$1:Lcom/example/android/BluetoothChat/BluetoothChat$2;

    .line 542
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 546
    iget-object v0, p0, Lcom/example/android/BluetoothChat/BluetoothChat$2$2;->this$1:Lcom/example/android/BluetoothChat/BluetoothChat$2;

    # getter for: Lcom/example/android/BluetoothChat/BluetoothChat$2;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;
    invoke-static {v0}, Lcom/example/android/BluetoothChat/BluetoothChat$2;->access$0(Lcom/example/android/BluetoothChat/BluetoothChat$2;)Lcom/example/android/BluetoothChat/BluetoothChat;

    move-result-object v0

    const/4 v1, 0x1

    iput v1, v0, Lcom/example/android/BluetoothChat/BluetoothChat;->BF:I

    .line 547
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 549
    return-void
.end method
