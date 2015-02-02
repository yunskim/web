coclass 'urllib'

reserved =: '!#$&`()*+,/:;=?@[]'
unreserved =: '0123456789-_.~','abcdefghijklmnopqrstuvwxyz','ABCDEFGHIJKLMNOPQRSTUVWXYZ'
safe =:  reserved , unreserved

urlencode =: [: ; encode^:(safe -.@e.~ ])&.>
encode =: [: toupper ('%' , (I. '6' = , 3!:3 'f') {&, 3!:3)

urlencode_z_ =: urlencode_urllib_
