<#-- 
 
 crea una clase para c# para la tabla  ${table}...
 Author : Luis Molina...
 
 -->
<#-- variables used internally by the generator... -->
<#assign nameFile="details${table}.Designer">
<#assign extensionFile="vb">
<#assign languageGenerated="vb">
<#assign description="vb">
<#assign targetDirectory="">
<#assign appliesToAllTables="true">
<#-- END variables used internally by the generator... -->
<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class details${table}
    Inherits System.Windows.Forms.Form

    'Form reemplaza a Dispose para limpiar la lista de componentes.
    <System.Diagnostics.DebuggerNonUserCode()> _
    Protected Overrides Sub Dispose(ByVal disposing As Boolean)
        Try
            If disposing AndAlso components IsNot Nothing Then
                components.Dispose()
            End If
        Finally
            MyBase.Dispose(disposing)
        End Try
    End Sub

    'Requerido por el Diseñador de Windows Forms
    Private components As System.ComponentModel.IContainer

    'NOTA: el Diseñador de Windows Forms necesita el siguiente procedimiento
    'Se puede modificar usando el Diseñador de Windows Forms.  
    'No lo modifique con el editor de código.
    <System.Diagnostics.DebuggerStepThrough()> _
    Private Sub InitializeComponent()
        Me.LinkLabel1 = New System.Windows.Forms.LinkLabel
       
				#set ($count = 0)
                #foreach( $field in $table.GetArrayOfFields )
                     #if (!$field.isKey())
                         
                         
                                  #if ($field.type.toString() == "_integer")
									 #if (! $field.isForeignKey())
										Me.txt${field} = New System.Windows.Forms.TextBox
									 #end
									 
									   #end 
                                  #if ($field.type.toString() == "_string")
									#if ( $field.size() >= 251)>
                                       Me.txt${field} = New System.Windows.Forms.TextBox
                                    #else
                                       Me.txt${field} = New System.Windows.Forms.TextBox
                                     #end		
                                     
                                     #end 
                                  #if ($field.type.toString() == "_date")
									Me.txt${field} = New System.Windows.Forms.TextBox
                                     #end 
                                  #if ($field.type.toString() == "_boolean")
                                     Me.ck${field} = New System.Windows.Forms.CheckBox
                                     #end 
								#if ($field.type.toString() == "_doble")
                                     Me.txt${field} = New System.Windows.Forms.TextBox
                                     #end 
								#if ($field.type.toString() == "_image")
                                     
                                     #end 
                                  <#default>
                                     #if ( $field.size() >= 251)>
                                       Me.txt${field} = New System.Windows.Forms.TextBox
                                    #else
                                        Me.txt${field} = New System.Windows.Forms.TextBox
                                     #end		
                          
                     #end
                    #set ($count = $count + 1 )
                 #end 
	   
        Me.ListBox1 = New System.Windows.Forms.ListBox
        
        Me.SuspendLayout()
        '
        'LinkLabel1
        '
        Me.LinkLabel1.AutoSize = True
        Me.LinkLabel1.Location = New System.Drawing.Point(109, 61)
        Me.LinkLabel1.Name = "LinkLabel1"
        Me.LinkLabel1.Size = New System.Drawing.Size(63, 13)
        Me.LinkLabel1.TabIndex = 0
        Me.LinkLabel1.TabStop = True
        Me.LinkLabel1.Text = "Descripcion"
        '
        
		#set ($count = 0)
		#foreach( $field in $table.GetArrayOfFields )
			 #if (!$field.isKey())
				 
				 
						  #if ($field.type.toString() == "_integer")
							 #if (! $field.isForeignKey())
								'txt${field}
								'
								Me.txt${field}.Location = New System.Drawing.Point(187, 54)
								Me.txt${field}.Name = "txt${field}"
								Me.txt${field}.Size = New System.Drawing.Size(185, 20)
								Me.txt${field}.TabIndex = 1
							 #end
							 
							   #end 
						  #if ($field.type.toString() == "_string")
							#if ( $field.size() >= 251)>
							   'txt${field}
								'
								Me.txt${field}.Location = New System.Drawing.Point(187, 54)
								Me.txt${field}.Name = "txt${field}"
								Me.txt${field}.Size = New System.Drawing.Size(185, 20)
								Me.txt${field}.TabIndex = 1
							#else
							   'txt${field}
								'
								Me.txt${field}.Location = New System.Drawing.Point(187, 54)
								Me.txt${field}.Name = "txt${field}"
								Me.txt${field}.Size = New System.Drawing.Size(185, 20)
								Me.txt${field}.TabIndex = 1
							 #end		
							 
							 #end 
						  #if ($field.type.toString() == "_date")
							'txt${field}
								'
								Me.txt${field}.Location = New System.Drawing.Point(187, 54)
								Me.txt${field}.Name = "txt${field}"
								Me.txt${field}.Size = New System.Drawing.Size(185, 20)
								Me.txt${field}.TabIndex = 1
							 #end 
						  #if ($field.type.toString() == "_boolean")
							  'ck${field}
								'
								Me.ck${field}.AutoSize = True
								Me.ck${field}.Location = New System.Drawing.Point(112, 131)
								Me.ck${field}.Name = "ck${field}"
								Me.ck${field}.Size = New System.Drawing.Size(81, 17)
								Me.ck${field}.TabIndex = 3
								Me.ck${field}.Text = "ck${field}"
								Me.ck${field}.UseVisualStyleBackColor = True
							 #end 
						#if ($field.type.toString() == "_doble")
							 'txt${field}
								'
								Me.txt${field}.Location = New System.Drawing.Point(187, 54)
								Me.txt${field}.Name = "txt${field}"
								Me.txt${field}.Size = New System.Drawing.Size(185, 20)
								Me.txt${field}.TabIndex = 1
							 #end 
						#if ($field.type.toString() == "_image")
							 
							 #end 
						  <#default>
							 #if ( $field.size() >= 251)>
							   'txt${field}
								'
								Me.txt${field}.Location = New System.Drawing.Point(187, 54)
								Me.txt${field}.Name = "txt${field}"
								Me.txt${field}.Size = New System.Drawing.Size(185, 20)
								Me.txt${field}.TabIndex = 1
							#else
								'txt${field}
								'
								Me.txt${field}.Location = New System.Drawing.Point(187, 54)
								Me.txt${field}.Name = "txt${field}"
								Me.txt${field}.Size = New System.Drawing.Size(185, 20)
								Me.txt${field}.TabIndex = 1
							 #end		
				  
			 #end
			#set ($count = $count + 1 )
		 #end 
		
        '
        'ListBox1
        '
        Me.ListBox1.FormattingEnabled = True
        Me.ListBox1.Location = New System.Drawing.Point(112, 179)
        Me.ListBox1.Name = "ListBox1"
        Me.ListBox1.Size = New System.Drawing.Size(120, 95)
        Me.ListBox1.TabIndex = 2
        '
       
        '
        'details${table}
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.ClientSize = New System.Drawing.Size(919, 440)
       
#set ($count = 0)
	#foreach( $field in $table.GetArrayOfFields )
		 #if (!$field.isKey())
			 
			 
					  #if ($field.type.toString() == "_integer")
						 #if (! $field.isForeignKey())
						 Me.Controls.Add(Me.txt${field})
						 #end
						 
						   #end 
					  #if ($field.type.toString() == "_string")
						#if ( $field.size() >= 251)>
						 Me.Controls.Add(Me.txt${field})
						#else
						 Me.Controls.Add(Me.txt${field})
						 #end		
						 
						 #end 
					  #if ($field.type.toString() == "_date")
						 Me.Controls.Add(Me.txt${field})
						 #end 
					  #if ($field.type.toString() == "_boolean")
						  Me.Controls.Add(Me.CheckBox1)
						 #end 
					#if ($field.type.toString() == "_doble")
						  Me.Controls.Add(Me.txt${field})
						 #end 
					#if ($field.type.toString() == "_image")
						 
						 #end 
					  <#default>
						 #if ( $field.size() >= 251)>
						    Me.Controls.Add(Me.txt${field})
						#else
							 Me.Controls.Add(Me.txt${field})
						 #end		
			  
		 #end
		#set ($count = $count + 1 )
	 #end 

	   
        Me.Controls.Add(Me.ListBox1)
       
        Me.Controls.Add(Me.LinkLabel1)
       
	   Me.Name = "details${table}"
        Me.Text = "details${table}"
        Me.ResumeLayout(False)
        Me.PerformLayout()

    End Sub
    Friend WithEvents LinkLabel1 As System.Windows.Forms.LinkLabel
    
	#set ($count = 0)
	#foreach( $field in $table.GetArrayOfFields )
		 #if (!$field.isKey())
			 
			 
					  #if ($field.type.toString() == "_integer")
						 #if (! $field.isForeignKey())
							Friend WithEvents txt${field} As System.Windows.Forms.TextBox
						 #end
						 
						   #end 
					  #if ($field.type.toString() == "_string")
						#if ( $field.size() >= 251)>
						  Friend WithEvents txt${field} As System.Windows.Forms.TextBox
						#else
						 Friend WithEvents txt${field} As System.Windows.Forms.TextBox
						 #end		
						 
						 #end 
					  #if ($field.type.toString() == "_date")
						Friend WithEvents txt${field} As System.Windows.Forms.TextBox
						 #end 
					  #if ($field.type.toString() == "_boolean")
						   Friend WithEvents ck${field} As System.Windows.Forms.CheckBox
						 #end 
					#if ($field.type.toString() == "_doble")
						 Friend WithEvents txt${field} As System.Windows.Forms.TextBox
						 #end 
					#if ($field.type.toString() == "_image")
						 
						 #end 
					  <#default>
						 #if ( $field.size() >= 251)>
						   Friend WithEvents txt${field} As System.Windows.Forms.TextBox
						#else
							Friend WithEvents txt${field} As System.Windows.Forms.TextBox
						 #end		
			  
		 #end
		#set ($count = $count + 1 )
	 #end 
	
    
	Friend WithEvents ListBox1 As System.Windows.Forms.ListBox
   
End Class