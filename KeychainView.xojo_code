#tag IOSView
Begin iosView KeychainView
   BackButtonTitle =   "Return"
   Compatibility   =   ""
   Left            =   0
   NavigationBarVisible=   True
   TabTitle        =   ""
   Title           =   "Keychain"
   Top             =   0
   Begin iOSTable Table1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Table1, 3, TopLayoutGuide, 4, False, +1.00, 1, 1, *kStdControlGapV, 
      AutoLayout      =   Table1, 4, BottomLayoutGuide, 3, False, +1.00, 1, 1, 0, 
      AutoLayout      =   Table1, 2, <Parent>, 2, False, +1.00, 1, 1, 0, 
      AutoLayout      =   Table1, 1, <Parent>, 1, False, +1.00, 1, 1, 0, 
      Format          =   "0"
      Height          =   407.0
      Left            =   0
      LockedInPosition=   False
      Scope           =   0
      SectionCount    =   0
      Top             =   73
      Visible         =   True
      Width           =   320.0
   End
End
#tag EndIOSView

#tag WindowCode
	#tag Event
		Sub Activate()
		  AlertUserDefaults
		End Sub
	#tag EndEvent

	#tag Event
		Sub Open()
		  table1.AddSection ("Keychain")
		  table1.AddRow 0, new iOSTableCellData ("Add item", "Using SecItemAdd()")
		  table1.AddRow 0, new iOSTableCellData ("Query for item", "Using SecItemCopyMatching()")
		  table1.AddRow 0, new iOSTableCellData ("Update item", "Using SecItemUpdate()")
		  table1.AddRow 0, new iOSTableCellData ("Delete item", "Using SecItemDelete()")
		  table1.AddRow 0, new iOSTableCellData ("Add protected key", "Using SecKeyGeneratePair()")
		  table1.AddRow 0, new iOSTableCellData ("Use protected key", "Using SecKeyRawSign()")
		  table1.AddRow 0, new iOSTableCellData ("Delete protected key", "Using SecItemDelete()")
		  table1.AddSection ("TouchID")
		  table1.AddRow 1, new iOSTableCellData ("Touch ID preflight", "Using canEvaluatePolicy:")
		  table1.AddRow 1, new iOSTableCellData ("Touch ID authentication", "Using evaluatePolicy:")
		  // table1.AddRow 0, new iOSTableCellData ("Touch ID authentication with custom text", "Using evaluatePolicy:")
		  
		  // dim TI as new iOSLibTouchID
		  // dim b as Boolean = ti.Available
		  // dim t as text = ti.UnavailabilityReason
		  // dim i as iOSLibTouchID.TouchIDError = ti.UnavailabilityError
		  // ti.Authenticate ("Just a test")
		  
		  table1.AddSection("AppleUserDefaults")
		  table1.addrow 2, new iOSTableCellData("Change UserDefaults","for using Keychain methods")
		  
		  // dim t as text = SecurityFramework.ImportExportPassphrase
		  // dim t1 as text = SecurityFramework.ItemClassKeyConstant
		  // dim t2 as text = SecurityFramework.ItemClassValueGenericConstant
		  // dim t3 as text = SecurityFramework.ItemClassValueInternetPassword
		  // dim b as AppleCFBoolean = AppleCFBoolean.BooleanTrue
		  // break
		  
		  timer.CallLater 2000, AddressOf test
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h21
		Private Sub AlertResult(Controller as applealertcontroller, button as text, captions() as Text)
		  if button = "OK" then
		    // save toUserDefaults
		    dim username as text = captions(1)
		    dim password as text = captions(0)
		    if not username.Empty and not password.Empty then
		      dim UDefaults as AppleUserDefaults = AppleUserDefaults.StandardUserDefaults
		      UDefaults.BooleanValue(UDTag) = true
		      UDefaults.TextValue (UNameTag) = username
		      UDefaults.TextValue(UIDTag) = Password
		      Service = UDefaults.TextValue(UIDTag)
		      Account = UDefaults.TextValue(UNameTag)
		    end if
		  else
		    dim AlertController as new AppleAlertController ("No UserDefaults","For the keychain demo to work, you must define an idenifier and a username. Please do so from the last entry of the table", AppleAlertController.UIAlertControllerStyle.alert)
		    AlertController.Show self.AppleViewController
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub AlertUserDefaults(enforce as boolean = false)
		  dim UDefaults as AppleUserDefaults = AppleUserDefaults.StandardUserDefaults
		  dim userdatasaved as Boolean = UDefaults.BooleanValue(UDTag)
		  if not userdatasaved or enforce then
		    dim AlertController as new AppleAlertController ("AppleUserDefaults","Please enter a freely chosen identifier and a user name. They will be taken as identifiers for the Keychain demos and are saved to the UserDefaults.", AppleAlertController.UIAlertControllerStyle.alert)
		    AlertController.AddstandardTextField (UDefaults.TextValue(UIDTag),UIDTag)
		    AlertController.AddstandardTextField (UDefaults.TextValue(UNameTag), UNameTag)
		    AlertController.AddOKAndCancelButtons
		    AddHandler AlertController.Result, AddressOf AlertResult
		    AlertController.Show (self.AppleViewController)
		  else
		    Service = UDefaults.TextValue(UIDTag)
		    Account = UDefaults.TextValue(UNameTag)
		  end if
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub AnalyzeBuffer(t as timer)
		  if me.BufferPtr <> nil then
		    dim buffer as new AppleAVAudioPCMBuffer (me.BufferPtr)
		    system.DebugLog buffer.DebugDescription
		  end if
		  system.DebugLog "Analyze ran"
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub CallBackBlock(BufferPtr as ptr, AVAudioTime as Ptr)
		  #pragma StackOverflowChecking false
		  #pragma BreakOnExceptions false
		  // #pragma backgroundtasks false
		  #pragma NilObjectChecking false
		  
		  declare Function floatChannelData lib AVFoundationLibName selector "floatChannelData" (id as ptr) as ptr
		  declare Function frameLength lib AVFoundationLibName selector "frameLength" (id as ptr) as UInt32
		  dim cdata as ptr = AppleAVAudioPCMBuffer.getfloatchanneldata (bufferptr)
		  dim frames as uint32 = frameLength (bufferptr)
		  
		  dim mblock as new MutableMemoryBlock (cdata, frames)
		  // analyzetimer = new timer
		  // AddHandler AnalyzeTimer.action, AddressOf AnalyzeBuffer
		  // AnalyzeTimer.Period = 5
		  // Here's a problem: We can neither analyze the buffer and time from inside the method.
		  // Running Xojo methods on a different thread is not really stable, probability of stack overflows gets high
		  
		  // A timer.CallLater 1, AddressOf AnalyzeBuffer doesn't work too - gives stack overflows.
		  // Neither does a computed property for both ptrs.
		  
		  // Currently I see 2 possbilities:
		  // Either have a timer check the ptr values for changes and then start the AnalyzeBuffer method or
		  // Put the analyze method on the iOS Level of a custom subclass where it can be called from this block (hopefully) via ObjectiveC Runtime methods.
		  
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub CheckTouchID()
		  dim c as new AppleLAContext
		  dim error as new AppleError
		  dim result as Boolean = c.CanEvaluatePolicy (error)
		  dim resulttext as text = if (result = True, "LAContext gave no error – TouchID is available", "LAContext replied with error "+EOL+error.LocalizedDescription)
		  Dim alert as new AppleAlertController ("TouchID result", resulttext)
		  alert.Show (self.AppleViewController)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub DeleteKeychain()
		  dim result as  int32 = SecurityFramework.DeleteKeychainItem (service, account)
		  dim alert as AppleAlertController
		  if result <> 0 then
		     alert = new AppleAlertController("Delete Failed", "SecItemDelete replied with error "+result.ToText+eol + _
		    SecurityFramework.OSStatusErrorText(result)+eol+"for Service "+Service+ eol+"Account "+Account)
		  else
		    alert = new AppleAlertController("Delete successful", "SecItemDelete replied with error 0 for"+eol + _
		    "Service "+Service+ eol+"Account "+Account)
		  end if
		  alert.Show (self.AppleViewController)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Evaluate()
		  dim c as new AppleLAContext
		  AddHandler c.EvaluationResult, AddressOf EvaluationFinished
		  c.EvaluatePolicy ("TouchID test")
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub EvaluationFinished(context as appleLAContext, success as boolean, errorNr as ioslibtouchId.TouchIDError, result as Text)
		  dim resultmessage as text = if (success, "Evaluation was successful", "Evaluation failed"+EOL+result)
		  dim alert as new AppleAlertController ("LAContext evaluation finished", resultmessage)
		  alert.show (self.AppleViewController)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub Init()
		  
		  // dim cell as new AppleTableViewCell (AppleTableViewCell.UITableViewCellStyle.Value1)
		  // cell.SetEditing (true)
		  // cell.PrepareForReuse
		  
		  
		  
		  // break
		  // t.SetEditingAnimated (true)
		  
		  // t.InsertRows (AppleMutableArray.fromAppleObjects(AppleIndexPath.IndexPathForRow (0,0)), true)
		  // dim c as AppleTableViewCell = t.Cell (1,1)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub KeyChainAlertResult(Controller as applealertcontroller, button as text, captions() as Text)
		  if button = "OK" or button = "Update" then
		    // save toUserDefaults
		    Comments = captions(0)
		    label = captions(1)
		    Description = captions (2)
		    Password = captions(3)
		    dim kci as new AppleKeychainItem
		    dim query as  AppleKeychainItem = MakeQueryKeychainItem(Service, account)
		    if button = "OK" then
		      kci.ServiceName = Service
		      kci.Account = Account
		      kci.ItemClass = AppleKeychainItem.KeychainItemClass.GenericPassword
		    end if
		    kci.Password = Password
		    kci.Comment = comments
		    kci.Label = label
		    kci.Description = Description
		    dim result as int32 
		    result = if (button = "OK", kci.AddItem, kci.UpdateItem(query))
		    dim alertcontroller as AppleAlertController
		    if result = 0 then
		      alertcontroller = new  AppleAlertController("Write successful","Method Returned 0")
		    else
		      alertcontroller = new AppleAlertController("Write failed","Method Returned "+result.ToText+EOL+OSStatusErrorText(result))
		    end if
		    alertcontroller.show (self.AppleViewController)
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub Readkeychain()
		  dim resultdict as  AppleKeychainItem = SecurityFramework.ReadKeychainitem (service, account)
		  if resultdict <> nil then
		    
		    Account = resultDict.Account
		    service = resultDict.ServiceName
		    comments = resultDict.Comment
		    Description = resultDict.Description
		    Label = resultDict.Label
		    password = resultDict.Password
		  else
		    dim alert as new AppleAlertController("No Keychain saved", "No keychain could be read with the Service and Account identifiers you set in the UserDefaults.")
		    alert.Show (self.AppleViewController)
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub ShowKeychainEntry(type as text)
		  dim UDefaults as AppleUserDefaults = AppleUserDefaults.StandardUserDefaults
		  dim hint as Text
		  select case type
		  case "show"
		    hint = "Saved keychain items for"+EOL+"Service "+Service+EOL+"Account "+Account
		  case "save"
		    hint = "Save keychain items for"+EOL+"Service "+Service+EOL+"Account "+Account
		  case "update"
		    hint = "Update keychain items for"+EOL+"Service "+Service+EOL+"Account "+Account
		  end select
		  dim AlertController as new AppleAlertController ("Keychain",hint)
		  AlertController.AddstandardTextField (Comments,KCComment)
		  AlertController.AddstandardTextField (label,KCLabel)
		  AlertController.AddstandardTextField (Description,KCDescription)
		  AlertController.AddPasswordTextField (Password, UPWTag)
		  if type = "save" then 
		    AlertController.AddOKAndCancelButtons
		    AddHandler AlertController.Result, AddressOf KeyChainAlertResult
		  elseif type = "update" then 
		    AlertController.AddOKAndCancelButtons("Update")
		    AddHandler AlertController.Result, AddressOf KeyChainAlertResult
		  end if
		  
		  
		  AlertController.Show (self.AppleViewController)
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Test()
		  // This is just for testing NSUserDefaults, has nothing to do with Keychain
		  // 
		  // 
		  // 
		  // Here comes keychain:
		  // 
		  // dim dict as new AppleKeychainItem
		  // dict.ItemClass = ItemClassValueGenericPassword
		  // dim acc as text = "Uli_identifier_unique12343"
		  // dict.ServiceName = acc
		  // dict.Account = acc
		  // dict.Password = "SECRET_PASSWORD_TEXT"
		  // // dict.ObjectForKeyName (ReturnData) = AppleCFBoolean.BooleanTrue
		  // // dim result2 as int32 = SecurityFramework.SecItemDelete(dict.id)
		  // dim resultDict as new AppleMutableDictionary
		  // // dim result1 as int32 = SecurityFramework.SecItemCopyMatching(dict.id, resultDict.id)
		  // dim result as int32 = dict.additem (resultdict)
		  // dim t as text = OSStatusErrorText (result)
		  // 
		  // dim t1 as text = dict.Password
		  // // dim pol as new SecurityPolicy
		  // // 
		  // dim dqueue as  GCDQueue = GCDQueue.ConcurrentQueue ("com.satzservice.iOSLib.myThread")
		  // break
		  // 
		  // 
		  // RetainDict = new Dictionary
		  // AddHandler canvas1.view.animationFinished, addressof TestEvent
		  // retaindict.value(self) = canvas1.view
		  // p.AnimateBounds FoundationFrameWork.nsmakerect (20,20,50,50), AppleViewAnimationOption.OptionRepeatAndReverse
		  
		  // dim anim as new appleblock (AddressOf TransitionBlock)
		  // p.Transition(anim, appleview.UIVIewAnimationTransition.FlipFromBottom, AppleViewAnimationOption., 1)
		  // Canvas1.Fadein (2)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub TestEvent(View as appleview, completed as boolean)
		  system.debuglog "Received!"
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h21
		Private Account As Text
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected AnalyzeTimer As Timer
	#tag EndProperty

	#tag Property, Flags = &h21
		Private BufferPtr As ptr
	#tag EndProperty

	#tag Property, Flags = &h21
		Private Comments As Text
	#tag EndProperty

	#tag Property, Flags = &h21
		Private Description As Text
	#tag EndProperty

	#tag Property, Flags = &h21
		Private Engine As AppleAVAudioEngine
	#tag EndProperty

	#tag Property, Flags = &h21
		Private Label As Text
	#tag EndProperty

	#tag Property, Flags = &h0
		Shared P As AppleView
	#tag EndProperty

	#tag Property, Flags = &h21
		Private Password As Text
	#tag EndProperty

	#tag Property, Flags = &h0
		Shared RetainDict As Dictionary
	#tag EndProperty

	#tag Property, Flags = &h21
		Private Service As Text
	#tag EndProperty

	#tag Property, Flags = &h21
		Private Session As AppleAVAudioSession
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected TimePtr As ptr
	#tag EndProperty


	#tag Constant, Name = KCComment, Type = Text, Dynamic = False, Default = \"Comment", Scope = Private
	#tag EndConstant

	#tag Constant, Name = KCDescription, Type = Text, Dynamic = False, Default = \"Description", Scope = Private
	#tag EndConstant

	#tag Constant, Name = KCLabel, Type = Text, Dynamic = False, Default = \"Label", Scope = Private
	#tag EndConstant

	#tag Constant, Name = UDTag, Type = Text, Dynamic = False, Default = \"UserSavedData", Scope = Private
	#tag EndConstant

	#tag Constant, Name = UIDTag, Type = Text, Dynamic = False, Default = \"KeyChainIdentifier", Scope = Private
	#tag EndConstant

	#tag Constant, Name = UNameTag, Type = Text, Dynamic = False, Default = \"UserName", Scope = Private
	#tag EndConstant

	#tag Constant, Name = UPWTag, Type = Text, Dynamic = False, Default = \"Password", Scope = Private
	#tag EndConstant


#tag EndWindowCode

#tag Events Table1
	#tag Event
		Sub Action(section As Integer, row As Integer)
		  if section = 0 then
		    select case row
		    case 0
		      ShowKeychainEntry("save")
		    case 1
		      readKeychain
		      ShowKeychainEntry("show")
		    case 2
		      Readkeychain
		      ShowKeychainEntry("update")
		    case 3
		      deleteKeychain
		    else
		      dim ac as new AppleAlertController("Not yet implemented", "This feature has not been implemented yet. Plase look for the next iOSLib release")
		      ac.Show(self.AppleViewController)
		    end select
		  elseif section = 1 then
		    select case row
		    case 0
		      checkTouchID
		    case 1
		      Evaluate
		    end select
		  else
		    AlertUserDefaults (true)
		  end if
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag ViewBehavior
	#tag ViewProperty
		Name="BackButtonTitle"
		Group="Behavior"
		Type="Text"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Index"
		Visible=true
		Group="ID"
		InitialValue="-2147483648"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Left"
		Visible=true
		Group="Position"
		InitialValue="0"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Name"
		Visible=true
		Group="ID"
		Type="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="NavigationBarVisible"
		Group="Behavior"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Super"
		Visible=true
		Group="ID"
		Type="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="TabTitle"
		Group="Behavior"
		Type="Text"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Title"
		Group="Behavior"
		Type="Text"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Top"
		Visible=true
		Group="Position"
		InitialValue="0"
		Type="Integer"
	#tag EndViewProperty
#tag EndViewBehavior
