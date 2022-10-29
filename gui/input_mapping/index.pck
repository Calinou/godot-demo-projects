GDPC                                                                            
   <   res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex�      J      3H�3�-�Ȼ��u�.W�    res://ActionRemapButton.gd.remap�&      ,       �Z)��?�jH���   res://ActionRemapButton.gdc �      �      �\N��	���k{l�   res://ActionRemapButton.tscn�            �5f*����m@nݞ   res://InputRemapMenu.tscn   �      w      �^�v)��E�?�~��    res://KeyPersistence.gd.remap   �&      )       ��q���8�`C�/9�k�   res://KeyPersistence.gdc`            ��S/|��%���e%   res://icon.png  �&      �      ��if�m�I����!   res://icon.png.import   �#      �      ��fe��6�B��^ U�   res://project.binary�+      �      � ����+qK\4��8            GDSC         (   �      �����ض�   �����ض�   �����϶�   �������ƶ���   ���������ض�    ������������������������������¶   ������������������϶   �������Ҷ���   �������������Ҷ�   ���¶���   ������������Ŷ��   �������������������¶���   ����¶��   ��������������ٶ   ������Ҷ   ������������������Ŷ   ���������������¶���   �������������Ӷ�   ������Ŷ   ����������ƶ   ������¶   ����������϶   ��������������¶      ui_up                ... Key       %s Key                                                    "      &   	   '   
   (      /      4      8      <      @      C      G      H      I      P      Q      R      W      [      \      ]      d      e      l      u      v          !   �   "   �   #   �   $   �   %   �   &   �   '   �   (   3YY8P�  Q;�  YY0�  PQV�  @P�  T�  P�  QQ�  �  P�  Q�  �  PQYYY0�  P�  QV�  �  P�  Q�  &�  V�  �	  �  �  �
  PQ�  (V�  �  PQYYY0�  P�  QV�  �  �  �  P�  Q�  �  �  YYY0�  P�  QV�  �  �  T�  P�  Q�  �  T�  P�  R�  Q�  �  �  T�  L�  M�  �  �  T�  PQ�  �	  �  �  T�  PQYYY0�  PQV�  ;�  �  T�  P�  QL�  MT�  PQ�  �	  �  �  Y`           [gd_scene load_steps=2 format=2]

[ext_resource path="res://ActionRemapButton.gd" type="Script" id=1]

[node name="ActionRemapButton" type="Button"]
margin_right = 90.0
margin_bottom = 30.0
toggle_mode = true
script = ExtResource( 1 )
__meta__ = {
"_edit_use_anchors_": false
}
          [gd_scene load_steps=3 format=2]

[ext_resource path="res://ActionRemapButton.tscn" type="PackedScene" id=1]

[sub_resource type="ButtonGroup" id=1]

[node name="InputRemapMenu" type="Control"]
anchor_right = 1.0
anchor_bottom = 1.0

[node name="Instructions" type="Label" parent="."]
anchor_right = 1.0
margin_top = 24.0
margin_bottom = 55.0
text = "Click on a button to reassign its action key."
align = 1
autowrap = true
__meta__ = {
"_edit_use_anchors_": false
}

[node name="RemapButtonGroup" type="Button" parent="."]
anchor_left = 0.5
anchor_top = 0.5
anchor_right = 0.5
anchor_bottom = 0.5
margin_left = -160.0
margin_top = -144.0
margin_right = 160.0
margin_bottom = 144.0
disabled = true
group = SubResource( 1 )
flat = true
__meta__ = {
"_edit_use_anchors_": false
}

[node name="ActionsList" type="VBoxContainer" parent="RemapButtonGroup"]
anchor_left = 0.5
anchor_top = 0.5
anchor_right = 0.5
anchor_bottom = 0.5
margin_left = -160.0
margin_top = -140.0
margin_right = 160.0
margin_bottom = 140.0
__meta__ = {
"_edit_use_anchors_": false
}

[node name="ActionRemapRow" type="HBoxContainer" parent="RemapButtonGroup/ActionsList"]
margin_right = 320.0
margin_bottom = 52.0
size_flags_horizontal = 3
size_flags_vertical = 3

[node name="ActionName" type="Label" parent="RemapButtonGroup/ActionsList/ActionRemapRow"]
margin_right = 158.0
margin_bottom = 52.0
size_flags_horizontal = 3
size_flags_vertical = 3
text = "Move Left"
align = 1
valign = 1

[node name="RemapButton" parent="RemapButtonGroup/ActionsList/ActionRemapRow" instance=ExtResource( 1 )]
margin_left = 162.0
margin_right = 320.0
margin_bottom = 52.0
size_flags_horizontal = 3
size_flags_vertical = 3
group = SubResource( 1 )
action = "move_left"

[node name="ActionRemapRow2" type="HBoxContainer" parent="RemapButtonGroup/ActionsList"]
margin_top = 56.0
margin_right = 320.0
margin_bottom = 109.0
size_flags_horizontal = 3
size_flags_vertical = 3

[node name="ActionName" type="Label" parent="RemapButtonGroup/ActionsList/ActionRemapRow2"]
margin_right = 158.0
margin_bottom = 53.0
size_flags_horizontal = 3
size_flags_vertical = 3
text = "Move Right"
align = 1
valign = 1

[node name="RemapButton" parent="RemapButtonGroup/ActionsList/ActionRemapRow2" instance=ExtResource( 1 )]
margin_left = 162.0
margin_right = 320.0
margin_bottom = 53.0
size_flags_horizontal = 3
size_flags_vertical = 3
group = SubResource( 1 )
action = "move_right"

[node name="ActionRemapRow3" type="HBoxContainer" parent="RemapButtonGroup/ActionsList"]
margin_top = 113.0
margin_right = 320.0
margin_bottom = 166.0
size_flags_horizontal = 3
size_flags_vertical = 3

[node name="ActionName" type="Label" parent="RemapButtonGroup/ActionsList/ActionRemapRow3"]
margin_right = 158.0
margin_bottom = 53.0
size_flags_horizontal = 3
size_flags_vertical = 3
text = "Look Up"
align = 1
valign = 1

[node name="RemapButton" parent="RemapButtonGroup/ActionsList/ActionRemapRow3" instance=ExtResource( 1 )]
margin_left = 162.0
margin_right = 320.0
margin_bottom = 53.0
size_flags_horizontal = 3
size_flags_vertical = 3
group = SubResource( 1 )
action = "look_up"

[node name="ActionRemapRow4" type="HBoxContainer" parent="RemapButtonGroup/ActionsList"]
margin_top = 170.0
margin_right = 320.0
margin_bottom = 223.0
size_flags_horizontal = 3
size_flags_vertical = 3

[node name="ActionName" type="Label" parent="RemapButtonGroup/ActionsList/ActionRemapRow4"]
margin_right = 158.0
margin_bottom = 53.0
size_flags_horizontal = 3
size_flags_vertical = 3
text = "Crouch"
align = 1
valign = 1

[node name="RemapButton" parent="RemapButtonGroup/ActionsList/ActionRemapRow4" instance=ExtResource( 1 )]
margin_left = 162.0
margin_right = 320.0
margin_bottom = 53.0
size_flags_horizontal = 3
size_flags_vertical = 3
group = SubResource( 1 )
action = "crouch"

[node name="ActionRemapRow5" type="HBoxContainer" parent="RemapButtonGroup/ActionsList"]
margin_top = 227.0
margin_right = 320.0
margin_bottom = 280.0
size_flags_horizontal = 3
size_flags_vertical = 3

[node name="ActionName" type="Label" parent="RemapButtonGroup/ActionsList/ActionRemapRow5"]
margin_right = 158.0
margin_bottom = 53.0
size_flags_horizontal = 3
size_flags_vertical = 3
text = "Dash"
align = 1
valign = 1

[node name="RemapButton" parent="RemapButtonGroup/ActionsList/ActionRemapRow5" instance=ExtResource( 1 )]
margin_left = 162.0
margin_right = 320.0
margin_bottom = 53.0
size_flags_horizontal = 3
size_flags_vertical = 3
group = SubResource( 1 )
action = "dash"
         GDSC         -   �      ���Ӷ���   �����������޶���   ������Ŷ   �����϶�   �����ض�   �������ƶ���   ����������Ŷ   ��������������¶   ����������ƶ   ���Ӷ���   ���Ӷ���   ����   ����������Ŷ   ����������ƶ   ���ض���   ���򶶶�   ����������ƶ   ������Ķ   ����Ӷ��   ���Ŷ���   ��Ŷ   ������������������Ŷ   ���������������¶���   ����󶶶   ��������Ķ��      user://keymaps.dat                                        
                     	      
               %      4      8      9      :      B      L      V      Z      \      ]      h      t      z      {      |      }      ~      �      �       �   !   �   "   �   #   �   $   �   %   �   &   �   '   �   (   �   )   �   *   �   +   �   ,   �   -   �   .   YY3YY:�  Y;�  V�  YYY0�  PQX=V�  �  �  )�  �  T�  PQV�  �  L�  M�  T�  P�  QL�  M�  �  PQYYY0�  PQX=V�  ;�	  V�
  T�  PQ�  &�	  T�  P�  QV�  �  PQ�  .�  �  �	  T�  P�  R�
  T�  Q�  ;�  V�  �	  T�  P�  Q�  �	  T�  PQ�  �  �  �  �  )�  �  T�  PQV�  &�  T�  P�  QV�  �  L�  M�  L�  M�  �  �  �  T�  P�  Q�  �  T�  P�  R�  L�  MQYYY0�  PQX=V�  �  ;�	  V�
  T�  PQ�  �  �	  T�  P�  R�
  T�  Q�  �	  T�  P�  R�  Q�  �	  T�  PQY`       GDST@   @            .  WEBPRIFF"  WEBPVP8L  /?� g)�$GRx��	G���W���F�$ɑ�{�Cw�����$)������`��_m��Sf�������AD%��C(A�ʨ�P	$K�J�JV��"�
��(���JV�"�C�J��$��^�[[2
Al䨐�܄�����@�x�<���/����l����zR�Ө��A*�B�>d��3j\g�P�α3@�A�=@�s��s�3��!� �0��
�s��6�{	
	����6
����l��Xcc׽���R	�������m��]qi/��f��P���m۶ms����U������~������::{��������t�<4c�����3p�2�2V���¹,J�8.IKɨ��0 �=إ!��t:�N�NOF�8�դ��h⧐�7v���������Xm���D!�4��}h�����j��F(M�)T��M�������S��J���@G(�SWN���jS���L�LN�)Ą=JnB��!��.� 2W�CFd������������Ȃq΅�Y�W��������-890��[ ���-�8p�y�W�q{<n�=�����;90�14���#oW����c�5��5v�VRf��J�A�V8�EC��t��L�)I�Ņ)�𙠴�ى�n�I�8��$:�u�f����'�א�j3&�D��������~�*�4aP�P������6E�
���T�a�#��3W�ŝ<��#y�
�$��@/%/��c�Ő�N�[ ���!#2�XU^RJ�[ZRQmd�8��ܬ�+�_�A��f����-����H8��+̸=���{F������ꑷ�{p���1��J�;g+)�a`�� i+�ˢ��t\\:�����n���E4��X\���?��7�ˊ��-I���"q0�Iq���#��5������ok�אH����җ�&�E>���3�:�4aP�P��^en�p��y��ke{'>D���:t�B����m�ʵ�_�''Z7�P 	z:���=��_B����	�+�;����r su�g�d�ȝ��Q�O       [remap]

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
              [remap]

path="res://ActionRemapButton.gdc"
    [remap]

path="res://KeyPersistence.gdc"
       �PNG

   IHDR   @   @   ����  gPLTELLLIIIFEIMJVKHTJGTIFSHHHFDKA=I@>HECJ?=GCBH><FGGGCAH=:E>;F:7B41<52>=;E<:D���������xw}97A74?64?85@53>B@G<9C���XV^52=���.+6������{y���,)5��ɭ�����������A@F;9B���WU^���FDN���42<������ljq���gfmtsy���}{�`_fA?F:8B;9C���MKUFDM���86@���64>IHP���20;��̟��}|�@?E][c���ZYa���A?I53=uszlkr[ZbMKT@>E?>D86?97@85>74>85?A@D@>I?<G>;G><G?<H@>JKKKFFF??>=====<<<<<<;;;;:;:MMM>>=;;:::9:::OKYMIWLHVLIVKHUYV_���42=������# ,���86A_]e������QOX��Έ��a_g31;���75@������LKS-+6,*50.9���1/:��������������tszjhp^\epnv=;Font97B��Җ�����ECM>;E96A���<9D31<.+7������FCM��������������˼��>=F20:���{z�[Ya75?srxihoMLU���|{�^]egemb`h���������31:/-676>A?E��B  LIDATx��=h�Q��7��ش���H��?"���."ک�[�TA�V����U!]jKPT"��Y��"���.""u�S��u����$_rrے6��#�Ҝ�¹��s��!ID���H��%�<d�ӊ!��*bi�ꀬ`�H�*�BZ�� �Mr��ӝ��LG�9 pe� ?����!��� �(?��� �8ټ����� `��k�f@rb=�w{F[R��>h� ��7��O�{3���AN@|wL8�:P����� �#�_�#�Cj5T�I?�|�*Hi<E��˝n��t��[�ߢ����Eni  z+�0��`�u���v��lȑ	)�(b��f���g5��.'� ��6 ����yg�0���䵹�l��on>��2��6���/Smd��C�������"v�u��_����$/2�j�WB��`�u���R�B],�R,�雑��ήV�aW,��$;��R&̞p\�ņX��B2rl��b��&�r'o;FRj�!�������x�Wj�!�d���N���{�#_��Zl�傗�Nj�i2����6ۣ号G���R��_HP��7Q    IEND�B`�        ECFG      application/config/name         Input Mapping GUI      application/config/description�      �   A demo showing how to build an input key remapping screen.

- Click the buttons to change the bound keys.
- Persists the keys to disk, so they are preserved
  after the project is restarted.     application/run/main_scene$         res://InputRemapMenu.tscn      application/config/icon         res://icon.png     autoload/KeyPersistence          *res://KeyPersistence.gd   display/window/size/width      �     display/window/size/height      �     display/window/dpi/allow_hidpi            display/window/stretch/mode         2d     display/window/stretch/aspect         expand     gdnative/singletons             input/move_right�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode        physical_scancode             unicode           echo          script         input/move_left�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode        physical_scancode             unicode           echo          script         input/look_up�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode        physical_scancode             unicode           echo          script         input/crouch�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode        physical_scancode             unicode           echo          script      
   input/dash�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode        physical_scancode             unicode           echo          script      $   rendering/quality/driver/driver_name         GLES2   %   rendering/vram_compression/import_etc         &   rendering/vram_compression/import_etc2                    