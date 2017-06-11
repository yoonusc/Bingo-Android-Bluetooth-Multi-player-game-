.class Lcom/example/android/BluetoothChat/BluetoothChat$4;
.super Ljava/lang/Object;
.source "BluetoothChat.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/android/BluetoothChat/BluetoothChat;->gameover(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/android/BluetoothChat/BluetoothChat;


# direct methods
.method constructor <init>(Lcom/example/android/BluetoothChat/BluetoothChat;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/example/android/BluetoothChat/BluetoothChat$4;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    .line 984
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 989
    iget-object v0, p0, Lcom/example/android/BluetoothChat/BluetoothChat$4;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/example/android/BluetoothChat/BluetoothChat;->reset(I)V

    .line 990
    iget-object v0, p0, Lcom/example/android/BluetoothChat/BluetoothChat$4;->this$0:Lcom/example/android/BluetoothChat/BluetoothChat;

    iget v1, v0, Lcom/example/android/BluetoothChat/BluetoothChat;->SCR1:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/example/android/BluetoothChat/BluetoothChat;->SCR1:I

    .line 994
    return-void
.end method
