#tag DesktopWindow
Begin DesktopWindow Window1
   Backdrop        =   0
   BackgroundColor =   &cFFFFFF
   Composite       =   False
   DefaultLocation =   2
   FullScreen      =   False
   HasBackgroundColor=   False
   HasCloseButton  =   True
   HasFullScreenButton=   False
   HasMaximizeButton=   True
   HasMinimizeButton=   True
   Height          =   400
   ImplicitInstance=   True
   MacProcID       =   0
   MaximumHeight   =   32000
   MaximumWidth    =   32000
   MenuBar         =   2051287039
   MenuBarVisible  =   False
   MinimumHeight   =   64
   MinimumWidth    =   64
   Resizeable      =   True
   Title           =   "Untitled"
   Type            =   0
   Visible         =   True
   Width           =   600
   Begin DesktopTextArea XMLTextArea
      AllowAutoDeactivate=   True
      AllowFocusRing  =   True
      AllowSpellChecking=   True
      AllowStyledText =   True
      AllowTabs       =   False
      BackgroundColor =   &cFFFFFF
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Format          =   ""
      HasBorder       =   True
      HasHorizontalScrollbar=   False
      HasVerticalScrollbar=   True
      Height          =   400
      HideSelection   =   True
      Index           =   -2147483648
      Italic          =   False
      Left            =   0
      LineHeight      =   0.0
      LineSpacing     =   1.0
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      MaximumCharactersAllowed=   0
      Multiline       =   True
      ReadOnly        =   False
      Scope           =   0
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextAlignment   =   0
      TextColor       =   &c000000
      Tooltip         =   ""
      Top             =   0
      Transparent     =   False
      Underline       =   False
      UnicodeMode     =   1
      ValidationMask  =   ""
      Visible         =   True
      Width           =   600
   End
End
#tag EndDesktopWindow

#tag WindowCode
	#tag MenuHandler
		Function FileOpen() As Boolean Handles FileOpen.Action
			var main as new XMLDocument
			var nodo as XmlNode = main.AppendChild(main.CreateElement("urlset"))
			nodo.setAttribute("xmlns","http://www.sitemaps.org/schemas/sitemap/0.9")
			
			var dicts() as Dictionary
			var i, j as Integer
			var narray(), relpath as String
			var pre as String = "https://www.koona.com/"
			var f, f1 As FolderItem
			f = Folderitem.ShowSelectFolderDialog
			If f <> Nil Then
			dicts.add new Dictionary()
			for i = 0 to f.Count-1
			narray = f.childAt(i).name.split(".")
			if f.ChildAt(i).IsFolder then
			if (narray(0).length > 0) then
			dicts(0).value(f.childAt(i).name) = f.childAt(i).NativePath
			end if 
			elseif narray(narray.lastIndex) = "html" then
			self.addOneNode(f.ChildAt(i),main,nodo,pre+f.childAt(i).name)
			end if 
			next // 
			
			dicts.add new Dictionary()
			for i = 0 to dicts(0).keyCount-1
			f1 = new FolderItem(dicts(0).value(dicts(0).key(i)),FolderItem.PathModes.Native) // it's a folder
			for j = 0 to f1.count-1
			narray = f1.childAt(j).name.split(".")
			if f1.childAt(j).isFolder then
			if (narray(0).length > 0) then
			dicts(dicts.lastIndex).value(f1.childAt(j).name) = f1.childAt(j).NativePath
			end if 
			elseif narray(narray.lastIndex) = "html" then
			relpath = f1.childAt(j).nativePath.nthField(f.nativePath+"/",2)
			self.addOneNode(f1.ChildAt(j),main,nodo,pre+relpath)
			end if 
			next // j 
			next // i 
			
			dicts.add new Dictionary()
			for i = 0 to dicts(1).keyCount-1
			f1 = new FolderItem(dicts(1).value(dicts(1).key(i)),FolderItem.PathModes.Native) // it's a folder
			for j = 0 to f1.count-1
			narray = f1.childAt(j).name.split(".")
			if f1.childAt(j).isFolder then
			if (narray(0).length > 0) then
			dicts(dicts.lastIndex).value(f1.childAt(j).name) = f1.childAt(j).NativePath
			end if 
			elseif narray(narray.lastIndex) = "html" then
			relpath = f1.childAt(j).nativePath.nthField(f.nativePath+"/",2)
			self.addOneNode(f1.ChildAt(j),main,nodo,pre+relpath)
			end if 
			next // j 
			next // i 
			
			dicts.add new Dictionary()
			for i = 0 to dicts(2).keyCount-1
			f1 = new FolderItem(dicts(2).value(dicts(2).key(i)),FolderItem.PathModes.Native) // it's a folder
			for j = 0 to f1.count-1
			narray = f1.childAt(j).name.split(".")
			if f1.childAt(j).isFolder then
			if (narray(0).length > 0) then
			dicts(dicts.lastIndex).value(f1.childAt(j).name) = f1.childAt(j).NativePath
			end if 
			elseif narray(narray.lastIndex) = "html" then
			relpath = f1.childAt(j).nativePath.nthField(f.nativePath+"/",2)
			self.addOneNode(f1.ChildAt(j),main,nodo,pre+relpath)
			end if 
			next // j 
			next // i 
			
			dicts.add new Dictionary()
			for i = 0 to dicts(3).keyCount-1
			f1 = new FolderItem(dicts(3).value(dicts(3).key(i)),FolderItem.PathModes.Native) // it's a folder
			for j = 0 to f1.count-1
			narray = f1.childAt(j).name.split(".")
			if f1.childAt(j).isFolder then
			if (narray(0).length > 0) then
			dicts(dicts.lastIndex).value(f1.childAt(j).name) = f1.childAt(j).NativePath
			end if 
			elseif narray(narray.lastIndex) = "html" then
			relpath = f1.childAt(j).nativePath.nthField(f.nativePath+"/",2)
			self.addOneNode(f1.ChildAt(j),main,nodo,pre+relpath)
			end if 
			next // j 
			next // i 
			
			dicts.add new Dictionary()
			for i = 0 to dicts(4).keyCount-1
			f1 = new FolderItem(dicts(4).value(dicts(4).key(i)),FolderItem.PathModes.Native) // it's a folder
			for j = 0 to f1.count-1
			narray = f1.childAt(j).name.split(".")
			if f1.childAt(j).isFolder then
			if (narray(0).length > 0) then
			dicts(dicts.lastIndex).value(f1.childAt(j).name) = f1.childAt(j).NativePath
			end if 
			elseif narray(narray.lastIndex) = "html" then
			relpath = f1.childAt(j).nativePath.nthField(f.nativePath+"/",2)
			self.addOneNode(f1.ChildAt(j),main,nodo,pre+relpath)
			end if 
			next // j 
			next // i 
			End If
			
			main.PreserveWhitespace = true
			XMLTextArea.Text = main.toString()
			
			Return True
			
			//<?xml version="1.0" encoding="UTF-8"?>
			//<urlset xmlns="http://www.sitemaps.org/schemas/sitemap/0.9">
			//  <url>
			//    <loc>http://www.example.com/</loc>
			//    <lastmod>2005-01-01</lastmod>
			//    <changefreq>monthly</changefreq>
			//    <priority>0.8</priority>
			//  </url>
			//</urlset> 
			
			// var nodo1 as XmlNode = nodo.AppendChild(main.CreateElement("head"))
			// var nodo2 as XmlNode = nodo1.AppendChild(main.CreateElement("head"))
			
		End Function
	#tag EndMenuHandler


	#tag Method, Flags = &h0
		Sub addOneNode(f as FolderItem, main as XMLDocument, nodo as XmlNode, pre as String)
		  if pre.IndexOf("_pending") >= 0 then return
		  if pre.IndexOf("_bak") >= 0 then return
		  
		  var nodos(), nodo1(), nodo2() as XMLNode
		  
		  nodos.add nodo.appendChild(main.createElement("url"))
		  nodo1.add nodos(nodos.lastIndex).appendChild(main.createElement("loc"))
		  nodo1(nodo1.lastIndex).appendChild(main.createTextNode(pre))
		  nodo2.add nodos(nodos.lastIndex).appendChild(main.createElement("lastmod"))
		  nodo2(nodo2.lastIndex).appendChild(main.createTextNode(f.ModificationDateTime.SQLDate))
		End Sub
	#tag EndMethod


#tag EndWindowCode

