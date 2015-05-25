#tag Class
 Attributes ( height = 162 ) Protected Class iOSLibPicker
Inherits iOSUserControl
	#tag Event
		Sub Close()
		  removehandler dataSource.SelectionChanged, AddressOf HandleSelectionChange
		  dataSource.RemoveFromDict
		  AppleResponder.setDelegate (id, nil)
		  mdataSource = nil
		  
		End Sub
	#tag EndEvent

	#tag Event
		Function CreateView() As UInteger
		  dim frame as new Rect (0,0,100,100)
		  
		  mid = AppleObject.AutoRelease (AppleResponder.DoInitWithFrame (AppleObject.alloc(ClassPtr), frame.tonsrect))
		  dim ds as new ApplePickerViewDataSource (self)
		  AppleResponder.setDelegate (id, ds.id)
		  mDataSource = ds
		  AddHandler dataSource.SelectionChanged, AddressOf HandleSelectionChange
		  system.debuglog "created new PickerView: "+integer(id).totext
		  
		  Return UInteger(mid)
		  
		End Function
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub AddColumn(values() as text)
		  dataSource.AddColumn(values)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Caption(acolumn as integer) As text
		  return dataSource.TextInRowAndColumn (SelectedRow(acolumn), acolumn)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Destructor()
		  system.debuglog "Released  PickerView: "+integer(id).totext
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub HandleSelectionChange(sender as ApplePickerViewDataSource, row as integer, column as integer)
		  mSelectedColumn = column
		  RaiseEvent SelectionChanged(row,column)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Function impl_layerClass(id as ptr, sel as ptr) As Ptr
		  return NSClassFromString ("CAGradientLayer")
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Sub impl_layoutSubviews(id as ptr, sel as ptr)
		  dim Ego as new AppleView (id)
		  if not ego.IsNIL then
		    dim sublayers as AppleArray = ego.Layer.SubLayers
		    if not sublayers.IsNIL then
		      if sublayers.count > 0 then
		        for q as uinteger = 0 to sublayers.Count -1
		          dim sublayer as  new  AppleCALayer (sublayers.PtrAtIndex(q))
		          sublayer.Frame = ego.Bounds
		        next
		      end if
		    end if
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function NumberOfRowsInComponent(Component as integer) As Integer
		  Declare Function numberOfRowsInComponent lib UIKit selector "numberOfRowsInComponent:" (id as ptr, component as integer) as Integer
		  Return numberOfRowsInComponent (id, Component)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ReloadAllComponents()
		  Declare Sub reloadAllComponents lib UIKit selector "reloadAllComponents:" (id as ptr)
		  reloadAllComponents id
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RemoveColumn(column as integer)
		  dataSource.RemoveColumn(column)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function RowSizeForComponent(Component as integer) As NSSize
		  #if Target64Bit
		    Declare Function rowSizeForComponent lib UIKit selector "rowSizeForComponent:" (id as ptr, component as integer) as nssize
		    Return rowSizeForComponent (id, Component)
		  #elseif Target32Bit
		    Declare Function rowSizeForComponent lib UIKit selector "rowSizeForComponent:" (id as ptr, component as integer) as NSSize32Bit
		    Return rowSizeForComponent(id, Component).toNSSize
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function SelectedRow(Column As integer) As integer
		  Return dataSource.SelectedRow(Column)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SelectedRow(column As Integer, Assigns value As Integer)
		  dataSource.SelectedRow(column) = value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SelectRow(Row as Integer, Component as integer, animated as boolean = false)
		  Declare Sub selectRow lib UIKit selector "selectRow:inComponent:animated:" (id as ptr, row as integer, component as integer, animaed as boolean)
		  selectRow (id, Row, Component, animated)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ViewForRow(Row as Integer, Component as integer) As AppleView
		  Declare Function viewForRow lib UIKit selector "viewForRow:forComponent:" (id as ptr, row as integer, component as integer) as Ptr
		  return AppleView.MakeFromPtr (viewForRow (id, Row, Component))
		End Function
	#tag EndMethod


	#tag Hook, Flags = &h0
		Event SelectionChanged(row as integer, column as integer)
	#tag EndHook


	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mClassPtr as Ptr = NSClassFromString ("UIPickerView")
			  return mClassPtr
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return mdataSource
			End Get
		#tag EndGetter
		dataSource As ApplePickerViewDataSource
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return mid
			End Get
		#tag EndGetter
		id As Ptr
	#tag EndComputedProperty

	#tag Property, Flags = &h21
		Private mdataSource As ApplePickerViewDataSource
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mid As Ptr
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mSelectedColumn As Integer
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Declare Function numberOfComponents lib UIKit selector "numberOfComponents" (id as ptr) as Integer
			  Return numberOfComponents (id)
			End Get
		#tag EndGetter
		NumberOfComponents As Integer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return mSelectedColumn
			End Get
		#tag EndGetter
		SelectedColumn As Integer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Note
			return colu
		#tag EndNote
		#tag Getter
			Get
			  return dataSource.TextInRowAndColumn (SelectedRow(SelectedColumn), SelectedColumn)
			End Get
		#tag EndGetter
		SelectionText As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return AppleView.MakeFromPtr (id)
			End Get
		#tag EndGetter
		View As AppleView
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
			InitialValue="162"
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
			Name="NumberOfComponents"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="SelectedColumn"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="SelectionText"
			Group="Behavior"
			Type="Text"
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
			InitialValue="0"
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
			InitialValue="320"
			Type="Double"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
