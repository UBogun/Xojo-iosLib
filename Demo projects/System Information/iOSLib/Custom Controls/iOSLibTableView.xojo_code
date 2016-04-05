#tag Class
Protected Class iOSLibTableView
Inherits iosusercontrol
	#tag Event
		Function CreateView() As UInteger
		  mTableView = new AppleTableView1 (FoundationFrameWork.NSMakeRect (0,0,100,100), AppleTableView1.UITableViewStyle.Plain)
		  // if RetainDict = nil then RetainDict = new Dictionary
		  // RetainDict.value (tableview.id) = TableView
		  system.debuglog "ID: "+integer(TableView.id).totext
		  return UInteger(mTableView.id)
		  
		End Function
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub AddSection(Title as Text)
		  me.TableView.AddSection (title)
		  me.TableView.RegisterHeaderFooter (AppleTableViewHeaderFooterView.ClassPtr, AppleTableViewHeaderFooterView.StandardHeaderName)
		End Sub
	#tag EndMethod


	#tag ComputedProperty, Flags = &h0
		#tag Setter
			Set
			  me.TableView.BackgroundView = new AppleImageView (value.toAppleImage)
			End Set
		#tag EndSetter
		BackgroundImage As iOSImage
	#tag EndComputedProperty

	#tag Property, Flags = &h21
		Private mTableView As AppleTableView1
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return mTableView
			End Get
		#tag EndGetter
		TableView As AppleTableView1
	#tag EndComputedProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="AccessibilityHint"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AccessibilityLabel"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Height"
			Visible=true
			Group="Position"
			Type="Double"
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
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Visible"
			Visible=true
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Width"
			Visible=true
			Group="Position"
			Type="Double"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
