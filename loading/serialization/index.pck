GDPC                                                                               <   res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex�      �      &�y���ڞu;>��.p   res://default_env.tres  `      �       um�`�N��<*ỳ�8   res://enemy.gd.remap�>              s�c7�߮a�����   res://enemy.gdc       4      ���$���'��7�_F   res://enemy.tscnP      �      ��mj��[���)!���   res://gui.gd.remap  �>             ��Li�?Q����9�V�   res://gui.gdc         �      ��9?h��/���SN��:   res://icon.png  `?            ��(���^k��%���   res://icon.png.import   �      �      ��fe��6�B��^ U�   res://player.gd.remap   �>      !       �ؿk�5s0n��;P   res://player.gdc0      K      uI�,��Rs��{��[�   res://project.binarypG      �      ���v�.p�3B���7   res://save_load.tscn�      w      ��o��˻=2�Y��J+$   res://save_load_config_file.gd.remap ?      0       �ځR z�cc_�sƍ[�    res://save_load_config_file.gdc  1      �      BEj_8���NS�<k_�    res://save_load_json.gd.remap   0?      )       A�m�-����Z,�   res://save_load_json.gdc�7      �      �v�(Cu#7����    [gd_resource type="Environment" load_steps=2 format=2]

[sub_resource type="ProceduralSky" id=1]

[resource]
background_mode = 2
background_sky = SubResource( 1 )
             GDSC            k      ������������τ�   ����������   ����������������򶶶   ��������Ѷ��   �������Ŷ���   ����׶��   �����޶�   �������������Ӷ�   �������ض���   ζ��   ��������������������������Ҷ   ���϶���   ���Ӷ���   �������������������������Ҷ�   ����϶��   K                       �               Player                                                      	      
               "      *      +      ,      6      7      8      @      G      H      I      P      X      \      ]      ^      e      i      3YY:�  Y:�  �  YYYY;�  �  YYY0�  P�  QV�  &�  V�  �  T�  �  �  Y�  �  �  P�  P�  R�  QQY�  �  &�  T�	  �  V�  �  T�	  �  YYY0�
  P�  QV�  &�  T�  �  V�  �  �  YYY0�  P�  QV�  �  �  Y`            [gd_scene load_steps=5 format=2]

[ext_resource path="res://enemy.gd" type="Script" id=1]
[ext_resource path="res://icon.png" type="Texture" id=2]

[sub_resource type="RectangleShape2D" id=1]
extents = Vector2( 32, 32 )

[sub_resource type="RectangleShape2D" id=2]
extents = Vector2( 38, 38 )

[node name="Enemy" type="KinematicBody2D" groups=["enemy"]]
position = Vector2( 64, 160 )
script = ExtResource( 1 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="."]
shape = SubResource( 1 )

[node name="Sprite" type="Sprite" parent="."]
modulate = Color( 2, 0.6, 0.5, 1 )
texture = ExtResource( 2 )

[node name="AttackArea" type="Area2D" parent="."]

[node name="CollisionShape2D" type="CollisionShape2D" parent="AttackArea"]
shape = SubResource( 2 )

[connection signal="body_entered" from="AttackArea" to="." method="_on_AttackArea_body_entered"]
[connection signal="body_exited" from="AttackArea" to="." method="_on_AttackArea_body_exited"]
    GDSC            S      ������������Ķ��   �����϶�   ���Ӷ���   ���Ӷ���   ����   �������Ҷ���   �������������Ӷ�   �������Ҷ���   ����������Ŷ   ��������������Ŷ   �������������޶�   ������������$   ��������������������������������Ҷ��   �嶶   ���������ض�      user://save_config_file.ini       user://save_json.json         user://                          
                  (      <   	   =   
   >      D      E      Q      3YYY0�  PQV�  ;�  �  T�  PQ�  �  W�  �  T�  �  T�  P�	  T�
  PQQ�  W�  �  T�  �  T�  P�	  T�
  P�  QQYYY0�  PQV�  �  �  T�  P�	  T�
  P�  QQY`        GDST@   @            �  WEBPRIFF�  WEBPVP8L�  /?����m��������_"�0@��^�"�v��s�}� �W��<f��Yn#I������wO���M`ҋ���N��m:�
��{-�4b7DԧQ��A �B�P��*B��v��
Q�-����^R�D���!(����T�B�*�*���%E["��M�\͆B�@�U$R�l)���{�B���@%P����g*Ųs�TP��a��dD
�6�9�UR�s����1ʲ�X�!�Ha�ߛ�$��N����i�a΁}c Rm��1��Q�c���fdB�5������J˚>>���s1��}����>����Y��?�TEDױ���s���\�T���4D����]ׯ�(aD��Ѓ!�a'\�G(��$+c$�|'�>����/B��c�v��_oH���9(l�fH������8��vV�m�^�|�m۶m�����q���k2�='���:_>��������á����-wӷU�x�˹�fa���������ӭ�M���SƷ7������|��v��v���m�d���ŝ,��L��Y��ݛ�X�\֣� ���{�#3���
�6������t`�
��t�4O��ǎ%����u[B�����O̲H��o߾��$���f���� �H��\��� �kߡ}�~$�f���N\�[�=�'��Nr:a���si����(9Lΰ���=����q-��W��LL%ɩ	��V����R)�=jM����d`�ԙHT�c���'ʦI��DD�R��C׶�&����|t Sw�|WV&�^��bt5WW,v�Ş�qf���+���Jf�t�s�-BG�t�"&�Ɗ����׵�Ջ�KL�2)gD� ���� NEƋ�R;k?.{L�$�y���{'��`��ٟ��i��{z�5��i������c���Z^�
h�+U�mC��b��J��uE�c�����h��}{�����i�'�9r�����ߨ򅿿��hR�Mt�Rb���C�DI��iZ�6i"�DN�3���J�zڷ#oL����Q �W��D@!'��;�� D*�K�J�%"�0�����pZԉO�A��b%�l�#��$A�W�A�*^i�$�%a��rvU5A�ɺ�'a<��&�DQ��r6ƈZC_B)�N�N(�����(z��y�&H�ض^��1Z4*,RQjԫ׶c����yq��4���?�R�����0�6f2Il9j��ZK�4���է�0؍è�ӈ�Uq�3�=[vQ�d$���±eϘA�����R�^��=%:�G�v��)�ǖ/��RcO���z .�ߺ��S&Q����o,X�`�����|��s�<3Z��lns'���vw���Y��>V����G�nuk:��5�U.�v��|����W���Z���4�@U3U�������|�r�?;�
         [remap]

importer="texture"
type="StreamTexture"
path="res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://icon.png"
dest_files=[ "res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
process/normal_map_invert_y=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
              GDSC      
      �      ������������τ�   ����������   �����޶�   ���������޶�   �����ض�   �����������Ķ���   �����Ӷ�   ����������Ķ   �������Ŷ���   ����׶��   �������϶���   ��������   ζ��   ����¶��   ������������������޶   ϶��   �������ض���   �������޶���   ����Ӷ��   �������Ӷ���   �������������������Ӷ���   �      d      
   move_right     	   move_left      	   move_down         move_up           �                                       	      
                     	   "   
   #      $      +      ,      3      E      W      _      `      a      p            �      �      �      �      �      �      �      �      �      3YYY:�  YY;�  �  9�  Y;�  �  PQYY5;�  W�  �  YYY0�  P�	  QV�  �  ;�
  �  T�  �  �
  T�  �  T�  P�  Q�  T�  P�  Q�  �
  T�  �  T�  P�  Q�  T�  P�  Q�  �  �
  �  �	  Y�  �  �  T�  �5  P�  T�  R�  R�  Q�  �  T�  �5  P�  T�  R�  R�  QYY0�  P�  QV�  �  �  �  �  T�  �  Y�  &�  
�	  V�  �  �  �  PQT�  PQY`     [gd_scene load_steps=10 format=2]

[ext_resource path="res://enemy.tscn" type="PackedScene" id=1]
[ext_resource path="res://gui.gd" type="Script" id=2]
[ext_resource path="res://save_load_json.gd" type="Script" id=3]
[ext_resource path="res://save_load_config_file.gd" type="Script" id=4]
[ext_resource path="res://icon.png" type="Texture" id=5]
[ext_resource path="res://player.gd" type="Script" id=6]

[sub_resource type="RectangleShape2D" id=1]
extents = Vector2( 32, 32 )

[sub_resource type="StyleBoxFlat" id=2]
bg_color = Color( 0.45098, 1, 0.152941, 1 )
corner_radius_top_left = 16
corner_radius_top_right = 16
corner_radius_bottom_right = 16
corner_radius_bottom_left = 16

[sub_resource type="StyleBoxFlat" id=3]
bg_color = Color( 0, 0, 0, 0.25098 )
corner_radius_top_left = 16
corner_radius_top_right = 16
corner_radius_bottom_right = 16
corner_radius_bottom_left = 16

[node name="Node" type="Node"]

[node name="Game" type="Node2D" parent="."]
position = Vector2( 296, 8 )

[node name="Player" type="KinematicBody2D" parent="Game"]
position = Vector2( 48, 40 )
script = ExtResource( 6 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="Game/Player"]
shape = SubResource( 1 )

[node name="Sprite" type="Sprite" parent="Game/Player"]
texture = ExtResource( 5 )

[node name="ProgressBar" type="ProgressBar" parent="Game/Player/Sprite"]
margin_left = -32.0
margin_top = -40.0
margin_right = 32.0
margin_bottom = -34.0
custom_styles/fg = SubResource( 2 )
custom_styles/bg = SubResource( 3 )
value = 100.0
percent_visible = false
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Enemy" parent="Game" instance=ExtResource( 1 )]

[node name="Enemy2" parent="Game" instance=ExtResource( 1 )]
position = Vector2( 376, 304 )

[node name="Enemy3" parent="Game" instance=ExtResource( 1 )]
position = Vector2( 232, 464 )

[node name="Control" type="Control" parent="."]
anchor_right = 1.0
anchor_bottom = 1.0
margin_left = 8.0
margin_top = 8.0
margin_right = -11.9999
margin_bottom = -12.0
__meta__ = {
"_edit_lock_": true,
"_edit_use_anchors_": false
}

[node name="VBoxContainer" type="VBoxContainer" parent="Control"]
margin_right = 269.0
margin_bottom = 330.0
custom_constants/separation = 30
script = ExtResource( 2 )
__meta__ = {
"_edit_use_anchors_": false
}

[node name="SaveLoad" type="GridContainer" parent="Control/VBoxContainer"]
margin_right = 269.0
margin_bottom = 78.0
custom_constants/vseparation = 8
custom_constants/hseparation = 8
columns = 2

[node name="SaveConfigFile" type="Button" parent="Control/VBoxContainer/SaveLoad"]
margin_right = 130.0
margin_bottom = 35.0
rect_min_size = Vector2( 0, 35 )
size_flags_horizontal = 3
text = "Save as ConfigFile"
script = ExtResource( 4 )
game_node = NodePath("../../../../Game")
player_node = NodePath("../../../../Game/Player")

[node name="LoadConfigFile" type="Button" parent="Control/VBoxContainer/SaveLoad"]
margin_left = 138.0
margin_right = 268.0
margin_bottom = 35.0
rect_min_size = Vector2( 0, 35 )
size_flags_horizontal = 3
text = "Load as ConfigFile"
script = ExtResource( 4 )
game_node = NodePath("../../../../Game")
player_node = NodePath("../../../../Game/Player")

[node name="SaveJSON" type="Button" parent="Control/VBoxContainer/SaveLoad"]
margin_top = 43.0
margin_right = 130.0
margin_bottom = 78.0
rect_min_size = Vector2( 0, 35 )
size_flags_horizontal = 3
text = "Save as JSON"
script = ExtResource( 3 )
game_node = NodePath("../../../../Game")
player_node = NodePath("../../../../Game/Player")

[node name="LoadJSON" type="Button" parent="Control/VBoxContainer/SaveLoad"]
margin_left = 138.0
margin_top = 43.0
margin_right = 268.0
margin_bottom = 78.0
rect_min_size = Vector2( 0, 35 )
size_flags_horizontal = 3
text = "Load as JSON"
script = ExtResource( 3 )
game_node = NodePath("../../../../Game")
player_node = NodePath("../../../../Game/Player")

[node name="OpenUserDataFolder" type="Button" parent="Control/VBoxContainer"]
margin_top = 108.0
margin_right = 269.0
margin_bottom = 143.0
rect_min_size = Vector2( 0, 35 )
hint_tooltip = "Click this button to check the saved files using the operating system's file manager."
text = "Open User Data Folder"

[node name="RichTextLabel" type="RichTextLabel" parent="Control/VBoxContainer"]
margin_top = 173.0
margin_right = 269.0
margin_bottom = 453.0
rect_min_size = Vector2( 0, 280 )
custom_constants/line_separation = 4
bbcode_enabled = true
bbcode_text = "Use the arrow keys or controller to move the player.

Use the save and load buttons to save/load the game with the respective format (each format is its own savegame)."
text = "Use the arrow keys or controller to move the player.

Use the save and load buttons to save/load the game with the respective format (each format is its own savegame)."

[connection signal="pressed" from="Control/VBoxContainer/SaveLoad/SaveConfigFile" to="Control/VBoxContainer/SaveLoad/SaveConfigFile" method="save_game"]
[connection signal="pressed" from="Control/VBoxContainer/SaveLoad/LoadConfigFile" to="Control/VBoxContainer/SaveLoad/LoadConfigFile" method="load_game"]
[connection signal="pressed" from="Control/VBoxContainer/SaveLoad/SaveJSON" to="Control/VBoxContainer/SaveLoad/SaveJSON" method="save_game"]
[connection signal="pressed" from="Control/VBoxContainer/SaveLoad/LoadJSON" to="Control/VBoxContainer/SaveLoad/LoadJSON" method="load_game"]
[connection signal="pressed" from="Control/VBoxContainer/OpenUserDataFolder" to="Control/VBoxContainer" method="_on_open_user_data_folder_pressed"]
         GDSC      	   5        �����ض�   ��������Ӷ��   ����������Ӷ   ������������   ��������Ӷ��   �����Ѷ�   ���������Ӷ�   ����   �����Ķ�   �������Ӷ���   ��������Ӷ��   �������ض���   �����޶�   ������Ŷ   ����϶��   �������Ӷ���   �����������������ƶ�   ��������ݶ��   ���Ӷ���   �������Ҷ���   ��������Ӷ��   ��������Ӷ��   ���������Ӷ�   ���Ӷ���   �����������Ѷ���   �������Ӷ���   ��������Ҷ��      user://save_config_file.ini       player        position      health        enemy         enemies       ../LoadConfigFile                res://enemy.tscn                                                    	      
                     #      ,      -      5      B      O      P      V      c      i      p      s      ~            �      �      �      �      �       �   !   �   "   �   #   �   $   �   %   �   &   �   '   �   (   �   )   �   *   �   +   �   ,   �   -   �   .   �   /   �   0   �   1   �   2   
  3     4     5   3YYYYY8P�  Q;�  YY8P�  Q;�  YY:�  YYY0�  PQV�  ;�  �  T�  PQY�  ;�  �	  P�  Q�  �  T�
  P�  R�  R�  T�  Q�  �  T�
  P�  R�  R�  T�  QY�  ;�  LM�  )�  �  PQT�  P�  QV�  �  T�  PN�  �  �  T�  R�  OQ�  �  T�
  P�  R�  R�  QY�  �  T�  P�  QY�  �	  P�  QT�  �  YYYY0�  PQV�  ;�  �  T�  PQ�  �  T�L  P�  QY�  ;�  �	  P�  Q�  �  T�  �  T�  P�  R�  Q�  �  T�  �  T�  P�  R�  QY�  �  )�  �  PQT�  P�  QV�  �  T�  PQY�  ;�  �  T�  P�  R�  Q�  �  ;�  �	  P�  QY�  )�  �  V�  ;�  ?P�  QT�  PQ�  �  T�  �  T�  �  �  T�  P�  QY`      GDSC         ?   9     �����ض�   ��������Ӷ��   ����������Ӷ   ������������   ��������Ӷ��   ���Ӷ���   ���Ӷ���   ����   ���ض���   ����󶶶   �����Ķ�   �������Ӷ���   ��������¶��   �������ض���   �����޶�   ������Ŷ   ����϶��   �������Ӷ���   �����������������ƶ�   ��������ݶ��   ���������Ӷ�   �������Ҷ���   ��������Ӷ��   ���򶶶�   �������Ӷ���   ���������Ӷ�   ���Ӷ���   �����������Ѷ���   �������Ӷ���   ��������Ҷ��      user://save_json.json         enemy         ../LoadJSON              res://enemy.tscn                                                    	      
                                 %      .      9      :      B      C      D      I      M      W      a      d      i      k      l      y      �       �   !   �   "   �   #   �   $   �   %   �   &   �   '   �   (   �   )   �   *   �   +   �   ,   �   -   �   .   �   /   �   0   �   1   �   2   �   3   �   4   �   5      6     7     8     9     :     ;     <   %  =   0  >   7  ?   3YYYYYYY8P�  Q;�  YY8P�  Q;�  YY:�  YYY0�  PQV�  ;�  �  T�  PQ�  �  T�  P�  R�  T�	  QY�  ;�
  �  P�  Q�  �  �  ;�  N�  �
  N�  �  �G  P�
  T�  QR�  �  �G  P�
  T�  QR�  OR�  �  LM�  OY�  )�  �  PQT�  P�  QV�  �  T�  T�  PN�  �  �G  P�  T�  QR�  OQY�  �  T�  P�Q  P�  QQY�  �  P�  QT�  �  YYYY0�  PQV�  ;�  �  T�  PQ�  �  T�  P�  R�  T�  Q�  ;�  �P  P�  T�  PQQY�  ;�
  �  P�  Q�  �  �  �
  T�  �H  P�  T�
  T�  Q�  �
  T�  �H  P�  T�
  T�  QY�  �  )�  �  PQT�  P�  QV�  �  T�  PQY�  �  ;�  �  P�  QY�  )�  �  T�  V�  ;�  ?P�  QT�  PQ�  �  T�  �H  P�  T�  Q�  �  T�  P�  QY`            [remap]

path="res://enemy.gdc"
[remap]

path="res://gui.gdc"
  [remap]

path="res://player.gdc"
               [remap]

path="res://save_load_config_file.gdc"
[remap]

path="res://save_load_json.gdc"
       �PNG

   IHDR   @   @   ����   sRGB ���  �PLTE   'C[$B[*FZ*EZ)CY*DZ)DZ*D[)CY   )DZ.Kc2Pi4Sn5Up'CX*E\+F\2Qj$BU)DZ(DY*DY*DYDb{x��Up�He~�����������ĭ�����^x������������n�̢�����[u�[u�Caz���������\��G��Q����������ԇ��W�Ğ��k��]w�}��b��N�����n��p��s�ΐ�؏��_y�}��9Ys|�����{�����Qm�<[u������d�ɔ��������������������������K����ߥ��u�����V�ĸ�����y��Li�������L��k��a�����^�ǃ��������������8Wr���Z����������툛����������������u�����X�����������������a`bA@BIHJ���U��R�����XWX��ĳ��j��������XWYq����҇�������ٌ��������ihjCBD��֊��������lkl���������i�����������O��c��J���������������������]�ƴ���������������������������������������|��T�å�ߵ����������������Ɂ����ҕ�����_��������I��I�����7Wqt�����s�������萢�x��������:Ys���������z�Д��}��e��������So����)DY*DY+D[   (�;v   �tRNS  *���� ~������ y��*�������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������{o��  �IDATxڜ�E�P������Yﮚ��Uݴ�ԵM]�E���B�:��%�bb.A�d��qb	B�ӈ�6�Y�X������+�7�m?��oo��3���<�ax������em۶m̽:��N���������������ſ�"�W׸���x��==�������7�����NDR�|���I������3��O������7���'>8�PҖJ j�R�3����ޠ���B�0�D{�py*`f�+�a��M��P���n��q��8�}��?�#���G`��w_ ��"Jg���A�,2i��Cr7�/K�V���2�����N���Z�*�a ��&��l-�I�6Z�@�+�����~D�`H܆���0&Nc��M��VE���Bx�b>�FUl�m�w�W�T��@-��sK79��ضU��Ϭ5ַtN�0�_�m�h�������P�5!�x-P���\8b����ٲ�n�R���Չ	4h}j]O�h�;�آ�1��&���:����󲞠�~<8��|\��Bk9���Q�Nz�FO�"�&jܸ�w�Q������߶��(ޙzT=��琵`lrj����}/����w�S�c6��,I�<�,�̸�,.���q8I��v�H�� �X�x���,��벼��"��l�9� �_�M�K�m������H����$��Ac�T&w�mI_�@�!�xs�0Go�7��!1�'��3O�9��ϯb����ᔘ�gu�1a|&"^���T}%"�2LL4�+�#�^����jJ���ZԤ3[B�VW���{K �+x��������~��P�aȕQ1*UܻEܪ�qũ�U�Li�Bݬ#]i��#C|-4����v��^��_p�=t;m˖���E buu ��Hʃ�U|������ʾV��/�Q��LY+_�meL����58X�B�a����]�;]Lo)���a`|GI�� �{J���!��ld����7�� �n�u�bi    IEND�B`�  ECFG      application/config/name,      "   Saving and Loading (Serialization)     application/config/description�      �   This demo showcases how to save a simple game with each serialization
format supported by Godot: ConfigFile and JSON.

For more information, see this documentation article:
https://docs.godotengine.org/en/latest/tutorials/io/saving_games.html     application/run/main_scene         res://save_load.tscn   application/config/icon         res://icon.png     display/window/size/height      @     display/window/stretch/mode         2d     display/window/stretch/aspect         expand     input/move_up�              deadzone  �������?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode        physical_scancode             unicode           echo          script            InputEventJoypadMotion        resource_local_to_scene           resource_name             device            axis      
   axis_value       ��   script            InputEventJoypadButton        resource_local_to_scene           resource_name             device            button_index         pressure          pressed           script            InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode   W      physical_scancode             unicode           echo          script            InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode   Z      physical_scancode             unicode           echo          script         input/move_downD              deadzone  �������?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode        physical_scancode             unicode           echo          script            InputEventJoypadMotion        resource_local_to_scene           resource_name             device            axis      
   axis_value       �?   script            InputEventJoypadButton        resource_local_to_scene           resource_name             device            button_index         pressure          pressed           script            InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode   S      physical_scancode             unicode           echo          script         input/move_left�              deadzone  �������?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode        physical_scancode             unicode           echo          script            InputEventJoypadMotion        resource_local_to_scene           resource_name             device            axis       
   axis_value       ��   script            InputEventJoypadButton        resource_local_to_scene           resource_name             device            button_index         pressure          pressed           script            InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode   A      physical_scancode             unicode           echo          script            InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode   Q      physical_scancode             unicode           echo          script         input/move_rightD              deadzone  �������?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode        physical_scancode             unicode           echo          script            InputEventJoypadMotion        resource_local_to_scene           resource_name             device            axis       
   axis_value       �?   script            InputEventJoypadButton        resource_local_to_scene           resource_name             device            button_index         pressure          pressed           script            InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode   D      physical_scancode             unicode           echo          script      $   rendering/quality/driver/driver_name         GLES2   %   rendering/vram_compression/import_etc         &   rendering/vram_compression/import_etc2          )   rendering/environment/default_clear_color      r�>��L>���>  �?)   rendering/environment/default_environment          res://default_env.tres  