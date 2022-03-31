VERSION 5.00
Begin VB.Form FrmNewEdit 
   BackColor       =   &H00C0FFFF&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "     我的课程表 - 微笑课程表 [编辑]"
   ClientHeight    =   4182
   ClientLeft      =   7878
   ClientTop       =   9438
   ClientWidth     =   5382
   Icon            =   "FrmNewEdit.frx":0000
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   4182
   ScaleWidth      =   5382
   StartUpPosition =   1  '所有者中心
   Begin VB.ComboBox CblDay 
      BackColor       =   &H00FAF9D6&
      Height          =   228
      ItemData        =   "FrmNewEdit.frx":1084A
      Left            =   4380
      List            =   "FrmNewEdit.frx":10863
      TabIndex        =   17
      Text            =   "星期一"
      Top             =   60
      Width           =   846
   End
   Begin VB.TextBox TxtName 
      BackColor       =   &H00C0FFFF&
      BorderStyle     =   0  'None
      BeginProperty Font 
         Name            =   "华文中宋"
         Size            =   9
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF0000&
      Height          =   184
      Left            =   1200
      TabIndex        =   10
      Text            =   "我的课程表"
      ToolTipText     =   "单击可修改"
      Top             =   60
      Width           =   3126
   End
   Begin VB.Frame FrmTab 
      BackColor       =   &H00C0FFFF&
      Height          =   3786
      Left            =   60
      TabIndex        =   0
      Top             =   300
      Width           =   5224
      Begin VB.CommandButton CmdCode 
         BackColor       =   &H00C0E0FF&
         Caption         =   "高级编辑..."
         BeginProperty Font 
            Name            =   "等线"
            Size            =   12
            Charset         =   134
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   306
         Left            =   120
         Style           =   1  'Graphical
         TabIndex        =   20
         ToolTipText     =   "小工具"
         Top             =   3300
         Width           =   2376
      End
      Begin VB.CommandButton CmdReturn 
         BackColor       =   &H00FED8E7&
         Caption         =   "还原"
         BeginProperty Font 
            Name            =   "等线"
            Size            =   12
            Charset         =   134
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   306
         Left            =   2580
         Style           =   1  'Graphical
         TabIndex        =   19
         ToolTipText     =   "小工具"
         Top             =   3300
         Width           =   1176
      End
      Begin VB.CommandButton CmdOK 
         BackColor       =   &H00FDEEBF&
         Caption         =   "保存"
         BeginProperty Font 
            Name            =   "等线"
            Size            =   12
            Charset         =   134
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   306
         Left            =   3840
         Style           =   1  'Graphical
         TabIndex        =   18
         ToolTipText     =   "小工具"
         Top             =   3300
         Width           =   1176
      End
      Begin VB.CommandButton CmdO 
         BackColor       =   &H00C0FFC0&
         Caption         =   "按时间排序"
         BeginProperty Font 
            Name            =   "华文仿宋"
            Size            =   10.5
            Charset         =   134
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   245
         Left            =   3840
         Style           =   1  'Graphical
         TabIndex        =   15
         ToolTipText     =   "小工具"
         Top             =   240
         Width           =   1236
      End
      Begin VB.CommandButton CmdTDel 
         BackColor       =   &H00C0FFC0&
         Caption         =   "删除"
         BeginProperty Font 
            Name            =   "华文仿宋"
            Size            =   10.5
            Charset         =   134
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   245
         Left            =   3060
         Style           =   1  'Graphical
         TabIndex        =   14
         ToolTipText     =   "小工具"
         Top             =   240
         Width           =   756
      End
      Begin VB.CommandButton CmdTAdd 
         BackColor       =   &H00C0FFC0&
         Caption         =   "添加"
         BeginProperty Font 
            Name            =   "华文仿宋"
            Size            =   10.5
            Charset         =   134
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   245
         Left            =   2280
         Style           =   1  'Graphical
         TabIndex        =   13
         ToolTipText     =   "小工具"
         Top             =   240
         Width           =   756
      End
      Begin VB.PictureBox PicO 
         BackColor       =   &H0080FFFF&
         Height          =   2586
         Left            =   120
         ScaleHeight     =   2562
         ScaleWidth      =   642
         TabIndex        =   7
         Top             =   600
         Width           =   664
         Begin VB.ListBox LstO 
            BackColor       =   &H00C0FFFF&
            BeginProperty Font 
               Name            =   "华文中宋"
               Size            =   10.5
               Charset         =   134
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00FF0000&
            Height          =   2184
            ItemData        =   "FrmNewEdit.frx":1089F
            Left            =   60
            List            =   "FrmNewEdit.frx":108A1
            TabIndex        =   8
            TabStop         =   0   'False
            Top             =   300
            Width           =   544
         End
      End
      Begin VB.PictureBox PicL 
         BackColor       =   &H0080FFFF&
         Height          =   2586
         Left            =   3240
         ScaleHeight     =   2562
         ScaleWidth      =   1842
         TabIndex        =   3
         Top             =   600
         Width           =   1866
         Begin VB.ComboBox CboLCha 
            BackColor       =   &H00C0FFFF&
            Height          =   228
            ItemData        =   "FrmNewEdit.frx":108A3
            Left            =   60
            List            =   "FrmNewEdit.frx":108C2
            TabIndex        =   6
            Text            =   "输入课程"
            Top             =   60
            Width           =   1684
         End
         Begin VB.ListBox LstL 
            BackColor       =   &H00C0FFFF&
            BeginProperty Font 
               Name            =   "华文中宋"
               Size            =   10.5
               Charset         =   134
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00FF0000&
            Height          =   2184
            ItemData        =   "FrmNewEdit.frx":108FC
            Left            =   60
            List            =   "FrmNewEdit.frx":108FE
            TabIndex        =   4
            TabStop         =   0   'False
            Top             =   300
            Width           =   1684
         End
      End
      Begin VB.PictureBox PicT 
         BackColor       =   &H0080FFFF&
         Height          =   2586
         Left            =   840
         ScaleHeight     =   2562
         ScaleWidth      =   2322
         TabIndex        =   1
         Top             =   600
         Width           =   2344
         Begin VB.ComboBox CboMC 
            BackColor       =   &H00C0FFFF&
            Height          =   228
            Left            =   1260
            TabIndex        =   11
            Text            =   "输入分"
            Top             =   60
            Width           =   1024
         End
         Begin VB.ComboBox CboHC 
            BackColor       =   &H00C0FFFF&
            Height          =   228
            Left            =   60
            TabIndex        =   5
            Text            =   "输入时"
            Top             =   60
            Width           =   1024
         End
         Begin VB.ListBox LstTm 
            BackColor       =   &H00C0FFFF&
            BeginProperty Font 
               Name            =   "华文中宋"
               Size            =   10.5
               Charset         =   134
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00FF0000&
            Height          =   2184
            ItemData        =   "FrmNewEdit.frx":10900
            Left            =   60
            List            =   "FrmNewEdit.frx":10902
            TabIndex        =   2
            TabStop         =   0   'False
            Top             =   300
            Width           =   2226
         End
         Begin VB.Label LblJ 
            BackStyle       =   0  'Transparent
            Caption         =   ":"
            BeginProperty Font 
               Name            =   "华文新魏"
               Size            =   10.5
               Charset         =   134
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   184
            Left            =   1140
            TabIndex        =   12
            Top             =   60
            Width           =   184
         End
      End
      Begin VB.Label LblSign 
         BackStyle       =   0  'Transparent
         Caption         =   "Smile TimeTable"
         BeginProperty Font 
            Name            =   "Blackadder ITC"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   306
         Left            =   720
         TabIndex        =   16
         ToolTipText     =   "课程表中的紫色总结文字颜色"
         Top             =   240
         Width           =   1386
      End
      Begin VB.Image ImgLogo 
         Height          =   384
         Left            =   240
         Picture         =   "FrmNewEdit.frx":10904
         Top             =   180
         Width           =   384
      End
   End
   Begin VB.Label LblCpC 
      BackStyle       =   0  'Transparent
      Caption         =   "课程表名称："
      Height          =   186
      Left            =   120
      TabIndex        =   9
      ToolTipText     =   "课程表中的紫色总结文字颜色"
      Top             =   60
      Width           =   1086
   End
   Begin VB.Menu MnFile 
      Caption         =   "文件"
      Visible         =   0   'False
      Begin VB.Menu MnRename 
         Caption         =   "重命名"
      End
      Begin VB.Menu MnSave 
         Caption         =   "保存为我的课程表"
      End
      Begin VB.Menu MnExIn 
         Caption         =   "从电子表格导入"
      End
      Begin VB.Menu MnToEx 
         Caption         =   "输出为电子表格"
      End
   End
   Begin VB.Menu MnDay 
      Caption         =   "星期"
      Visible         =   0   'False
      Begin VB.Menu MnDI 
         Caption         =   "星期1"
         Index           =   1
      End
   End
End
Attribute VB_Name = "FrmNewEdit"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim TMSel As Integer
Dim LSel As Integer

Private Sub CblDay_Change()
If Not Saved Then
Dim Cls
Cls = MsgBox("是否保存更改？", vbOKCancel, "微笑课程表")
If Cls = vbOK Then
NumberTbl LstTm, LstL
Open App.Path & "\SmTab\" & StName & ".smtab" & NDay For Output As #1
Dim jm
For jm = 0 To LstTm.ListCount - 1
Write #1, LstTm.List(jm), LstL.List(jm)
Next jm
Close #1
Msg "已保存" & NumToDay(NDay) & "的课程", &HFDEEBF, 1000
Save = True
End If

End If
NDay = DayToNum(CblDay.Text)
If NDay = 0 Then Exit Sub
On Error Resume Next
Open App.Path & "\SmTab\" & StName & ".smtab" & NDay For Input As #1
Dim j, CTM, CL, k
LstTm.Clear
LstL.Clear
LstO.Clear
For j = 1 To 100
If EOF(1) = True Then Exit For
Input #1, CTM, CL
LstTm.AddItem CTM
LstL.AddItem CL

Next j
Close #1
For k = 0 To LstTm.ListCount - 1
LstO.AddItem k + 1, k
Next
If LstTm.List(0) = "" Then LstO.Clear
Dim kl, kll
kll = LstO.ListCount - 1
For kl = 0 To kll

If LstTm.List(kl) = "" Then klli = kl: GoTo 99
Next
LstO.Clear
For k = 0 To LstTm.ListCount - 1
LstO.AddItem k + 1, k
Next
Exit Sub
99 kll = LstTm.ListCount - 1
For k = klli To kll
LstTm.RemoveItem (klli)
LstL.RemoveItem (klli)
Next
LstO.Clear
For k = 0 To LstTm.ListCount - 1
LstO.AddItem k + 1, k
Next
End Sub

Private Sub CblDay_Click()
If Not Saved Then
Dim Cls
Cls = MsgBox("是否保存更改？", vbOKCancel, "微笑课程表")
If Cls = vbOK Then
NumberTbl LstTm, LstL
Open App.Path & "\SmTab\" & StName & ".smtab" & NDay For Output As #1
Dim jm
For jm = 0 To LstTm.ListCount - 1
Write #1, LstTm.List(jm), LstL.List(jm)
Next jm
Close #1
Msg "已保存" & NumToDay(NDay) & "的课程", &HFDEEBF, 1000
Save = True
End If

End If
NDay = DayToNum(CblDay.Text)
If NDay = 0 Then Msg "请输入正确的星期数或选择下拉列表中的预设值", &H8080FF, "1500": Exit Sub

Open App.Path & "\SmTab\" & StName & ".smtab" & NDay For Input As #1
Dim j, CTM, CL, k
LstTm.Clear
LstL.Clear
LstO.Clear
For j = 1 To 100
If EOF(1) = True Then Exit For
Input #1, CTM, CL
LstTm.AddItem CTM
LstL.AddItem CL

Next j
Close #1
For k = 0 To LstTm.ListCount - 1
LstO.AddItem k + 1, k
Next
If LstTm.List(0) = "" Then LstO.Clear
Dim kl, kll, klli
kll = LstO.ListCount - 1
For kl = 0 To 100
On Error Resume Next
If LstTm.List(kl) = "" Then klli = kl: GoTo 99
Next
LstO.Clear
For k = 0 To LstTm.ListCount - 1
LstO.AddItem k + 1, k
Next
Exit Sub
99 kll = LstTm.ListCount - 1
For k = klli To kll
LstTm.RemoveItem (klli)
LstL.RemoveItem (klli)
Next
LstO.Clear
For k = 0 To LstTm.ListCount - 1
LstO.AddItem k + 1, k
Next
End Sub

Private Sub CmdO_Click()
Saved = False
NumberTbl LstTm, LstL
End Sub

Private Sub CmdOK_Click()
Saved = True
NumberTbl LstTm, LstL
Open App.Path & "\SmTab\" & StName & ".smtab" & NDay For Output As #1
Dim j
For j = 0 To LstTm.ListCount - 1
Write #1, LstTm.List(j), LstL.List(j)
Next j
Close #1
Msg "已保存" & NumToDay(NDay) & "的课程", &HFDEEBF, 1000
End Sub

Private Sub CmdReturn_Click()
Saved = True
Dim p, CTM, CL
LstTm.Clear
LstL.Clear
LstO.Clear
For p = 1 To 100
If EOF(i) Then Exit For
Input #1, CTM, CL
LstTm.AddItem CTM
LstL.AddItem CL
Next
End Sub

Private Sub CmdTAdd_Click()
If Not IsNumeric(CboHC.Text) Then
Msg "请输入数字", &H8080FF, 500
CboHC.Text = ""
CboHC.SetFocus
Exit Sub
End If
If Not IsNumeric(CboMC.Text) Then
Msg "请输入数字", &H8080FF, 500
CboMC.Text = ""
CboMC.SetFocus
Exit Sub
End If
If CboLCha.Text = "输入课程" Or CboLCha.Text = "" Then
Msg "请输入课程", &H8080FF, 500
Exit Sub
End If
Saved = False
CboHC.Text = Format(CboHC.Text, "00")
CboMC.Text = Format(CboMC.Text, "00")
Dim a, B
For a = 0 To LstTm.ListCount - 1
If CboHC.Text & ":" & CboMC.Text = LstTm.List(a) Then
    Msg "时间重复，不能添加", &H8080FF, 500
    Exit Sub
End If
Next
For B = 0 To LstTm.ListCount - 1
If CboHC.Text & ":" & CboMC.Text = LstTm.List(a) Then
    Msg "时间重复，不能添加", &H8080FF, 500
    Exit Sub
End If
Next
Dim i
TMSel = -1
For i = 0 To LstTm.ListCount - 1
If LstTm.Selected(i) = True Then TMSel = i
Next
LstTm.AddItem CboHC.Text & ":" & CboMC.Text, TMSel + 1
LstL.AddItem CboLCha.Text, TMSel + 1
Dim k, r, l
l = LstO.ListCount - 1
For r = 0 To l
LstO.RemoveItem 0
Next
For k = 0 To LstTm.ListCount - 1
LstO.AddItem k + 1, k
Next
End Sub




Private Sub CmdTDel_Click()
Saved = False
LstTm.RemoveItem SelL
LstL.RemoveItem SelL
Dim k, r
For r = 0 To LstO.ListCount - 1

LstO.RemoveItem 0
Next
For k = 0 To LstTm.ListCount - 1
LstO.AddItem k + 1, k
Next
End Sub

Private Sub Form_Load()
Saved = True
Dim i, j, k
StName = 1
TxtName.Text = StName
For i = 1 To 24
    CboHC.AddItem Format(i, "00")
Next
For j = 0 To 50 Step 10
i = Format(j, "00")
    CboMC.AddItem Format(j, "00")
Next
'''''''
Dim r, l

'''''''''''
NDay = 1

Open App.Path & "\SmTab\" & StName & ".smtab" & NDay For Input As #1

'''''''
Dim p, CTM, CL
For p = 1 To 100
If EOF(1) = True Then Close #1: Exit For
Input #1, CTM, CL
LstTm.AddItem CTM
LstL.AddItem CL
Next
l = LstO.ListCount - 1
For r = 0 To l
LstO.RemoveItem 0
Next
For k = 0 To LstTm.ListCount - 1
LstO.AddItem k + 1, k
Next
End Sub

Private Sub Form_Paint()
TxtName.SetFocus
End Sub

Private Sub LstL_Click()
Dim i
For i = 0 To LstL.ListCount - 1
If LstL.Selected(i) = True Then
SelL = i
LstTm.Selected(i) = True
LstO.Selected(i) = True
End If
Next


End Sub

Private Sub LstO_Click()
Dim i
For i = 0 To LstTm.ListCount - 1
If LstO.Selected(i) = True Then
SelL = i
LstL.Selected(i) = True
LstTm.Selected(i) = True
End If
Next
End Sub

Private Sub LstTm_Click()
Dim i
For i = 0 To LstTm.ListCount - 1
If LstTm.Selected(i) = True Then
SelL = i
LstL.Selected(i) = True
LstO.Selected(i) = True
End If
Next

End Sub

''''''''''''''
'完善对时间的过滤
'删除项，写文件
'Frmexit


