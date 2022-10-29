GDPC                                                                            	   <   res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex      �      Z��_�
k�������U(   res://OpenSimplexNoise_Viewer.gd.remap  @-      2       �Уs1���F���k�$   res://OpenSimplexNoise_Viewer.gdc   �      �      P|*^N_�!�]�D���$   res://OpenSimplexNoise_Viewer.shader�      o      L�6���\rS�JC��M$   res://OpenSimplexNoise_Viewer.tres  �      �       �@F�0��f-j���s$   res://OpenSimplexNoise_Viewer.tscn  �      #      ��#m�rw���d��}   res://icon.png  �-      �      �x�s�$���v+��ㅍ   res://icon.png.import   �*      �      ��fe��6�B��^ U�   res://project.binary0;      �      �����,�����J�e��    GDSC   $      E   6     ������ڶ   ����Ӷ��   ���������������Ӷ���   �������������������Ӷ���   ������Ӷ   ��������Ӷ��   ��������Ӷ��   �����϶�   �����������������Ķ�   ����������ζ   ����Ӷ��   ����������������ζ��   ���������϶�   ������������ζ��   �����Ҷ�   �����������������ζ�   ����������Ӷ   �������������ζ�   ������Ŷ   ���������������������Ŷ�   ���ض���   ���ζ���   ��������ڶ��   �������ڶ���   ���������������۶���    ������������������������������Ҷ   �嶶   ���������ض�    ���������������������������Ҷ���    ����������������������������Ҷ��$   ����������������������������������Ҷ    ������������������������������Ҷ(   �����������������������������������Ҷ���$   �������������������������������Ҷ���$   �������������������������������Ҷ���$   �������������������������������Ҷ���               	   min_value      	   max_value      J   https://docs.godotengine.org/en/latest/classes/class_opensimplexnoise.html       �                                                        	      
          &      '      2      =      H      S      ^      _      `      d      e      f      l      m      x      �      �      �      �      �      �       �   !   �   "   �   #   �   $   �   %   �   &   �   '   �   (   �   )   �   *   �   +   �   ,   �   -   �   .   �   /   �   0   �   1   �   2   �   3   �   4   �   5   �   6     7     8     9     :     ;     <     =     >     ?   #  @   $  A   %  B   ,  C   0  D   4  E   3YYY5;�  V�  W�  T�  T�  YYY;�  Y;�  YYY0�  PQV�  �  W�  �	  T�
  �  T�)  �  W�  �  T�
  �  T�  �  W�  �  T�
  �  T�  �  W�  �  T�
  �  T�  �  W�  �  T�
  �  T�  Y�  �  �  PQYYY0�  PQV�  �  ;�  P�  Q�  �  ;�  P�  Q�  �  ;�  W�  T�  �  �  T�  P�  R�  Q�  �  T�  P�  R�  QYYY0�  PQV�  �  �  T�  P�  QYYY0�  PQV�  W�  �	  T�
  �  P�(  P�  R�  QQYYY0�  P�
  QV�  �  T�)  �
  YYY0�  P�
  QV�  �  T�  �
  YYY0�  P�
  QV�  �  T�  �
  YYY0�   P�
  QV�  �  T�  �
  YYY0�!  P�
  QV�  �  T�  �
  YYY0�"  P�
  QV�  �  �
  �  �  PQYYY0�#  P�
  QV�  �  �
  �  �  PQY`   shader_type canvas_item;

uniform float min_value = -1;
uniform float max_value = 1;

void fragment() {
	// Get the color.
	vec4 color = texture(TEXTURE, UV);

	// Compare the value.
	float gray = color.x;
	if (gray < min_value) {
		color = vec4(0, 0, 0, 1);
	} else if (gray > max_value) {
		color = vec4(1, 1, 1, 1);
	}

	// Write back the color.
	COLOR = color;
}
 [gd_resource type="ShaderMaterial" load_steps=2 format=2]

[ext_resource path="res://OpenSimplexNoise_Viewer.shader" type="Shader" id=1]

[resource]
shader = ExtResource( 1 )
shader_param/min_value = -1.0
shader_param/max_value = 1.0
      [gd_scene load_steps=5 format=2]

[ext_resource path="res://OpenSimplexNoise_Viewer.gd" type="Script" id=1]
[ext_resource path="res://OpenSimplexNoise_Viewer.tres" type="Material" id=2]

[sub_resource type="OpenSimplexNoise" id=1]

[sub_resource type="NoiseTexture" id=2]
noise = SubResource( 1 )

[node name="OpenSimplexNoise Viewer" type="Control"]
anchor_right = 1.0
anchor_bottom = 1.0
margin_left = 24.0
margin_top = 24.0
margin_right = -24.0
margin_bottom = -24.0
script = ExtResource( 1 )
__meta__ = {
"_edit_use_anchors_": false
}

[node name="SeamlessNoiseTexture" type="TextureRect" parent="."]
material = ExtResource( 2 )
anchor_left = 0.5
anchor_top = 0.5
anchor_right = 0.5
anchor_bottom = 0.5
margin_left = -196.0
margin_top = -256.0
margin_right = 316.0
margin_bottom = 256.0
grow_horizontal = 2
grow_vertical = 2
texture = SubResource( 2 )
__meta__ = {
"_edit_use_anchors_": false
}

[node name="ButtonsContainer" type="VBoxContainer" parent="."]
anchor_left = 1.0
anchor_right = 1.0
margin_left = -137.0
margin_bottom = 44.0
__meta__ = {
"_edit_use_anchors_": false
}

[node name="DocumentationButton" type="Button" parent="ButtonsContainer"]
margin_right = 137.0
margin_bottom = 20.0
grow_horizontal = 0
text = "API Documentation"
__meta__ = {
"_edit_use_anchors_": false
}

[node name="RandomSeedButton" type="Button" parent="ButtonsContainer"]
margin_top = 24.0
margin_right = 137.0
margin_bottom = 44.0
grow_horizontal = 0
text = "Random Seed"
__meta__ = {
"_edit_use_anchors_": false
}

[node name="ParameterContainer" type="VBoxContainer" parent="."]
margin_right = 280.0
margin_bottom = 136.0
__meta__ = {
"_edit_use_anchors_": false
}

[node name="SeedSpinBox" type="SpinBox" parent="ParameterContainer"]
margin_right = 280.0
margin_bottom = 24.0
min_value = -2.14748e+09
max_value = 2.14748e+09
allow_greater = true
allow_lesser = true
prefix = "Seed:"

[node name="LacunaritySpinBox" type="SpinBox" parent="ParameterContainer"]
margin_top = 28.0
margin_right = 280.0
margin_bottom = 52.0
step = 0.1
allow_greater = true
prefix = "Lacunarity:"

[node name="PeriodSpinBox" type="SpinBox" parent="ParameterContainer"]
margin_top = 56.0
margin_right = 280.0
margin_bottom = 80.0
min_value = -100000.0
max_value = 100000.0
allow_greater = true
prefix = "Period:"

[node name="PersistenceSpinBox" type="SpinBox" parent="ParameterContainer"]
margin_top = 84.0
margin_right = 280.0
margin_bottom = 108.0
max_value = 1000.0
allow_greater = true
prefix = "Persistance:"

[node name="OctavesSpinBox" type="SpinBox" parent="ParameterContainer"]
margin_top = 112.0
margin_right = 280.0
margin_bottom = 136.0
min_value = 1.0
max_value = 9.0
value = 1.0
prefix = "Octaves:"

[node name="ClipContainer" type="VBoxContainer" parent="."]
anchor_top = 1.0
anchor_bottom = 1.0
margin_top = -52.0
margin_right = 280.0
grow_vertical = 0
__meta__ = {
"_edit_use_anchors_": false
}

[node name="MinClipSpinBox" type="SpinBox" parent="ClipContainer"]
margin_right = 280.0
margin_bottom = 24.0
min_value = -1.0
max_value = 1.0
step = 0.01
value = -1.0
prefix = "Min:"

[node name="MaxClipSpinBox" type="SpinBox" parent="ClipContainer"]
margin_top = 28.0
margin_right = 280.0
margin_bottom = 52.0
min_value = -1.0
max_value = 1.0
step = 0.01
value = 1.0
prefix = "Max:"

[connection signal="pressed" from="ButtonsContainer/DocumentationButton" to="." method="_on_DocumentationButton_pressed"]
[connection signal="pressed" from="ButtonsContainer/RandomSeedButton" to="." method="_on_RandomSeedButton_pressed"]
[connection signal="value_changed" from="ParameterContainer/SeedSpinBox" to="." method="_on_SeedSpinBox_value_changed"]
[connection signal="value_changed" from="ParameterContainer/LacunaritySpinBox" to="." method="_on_LacunaritySpinBox_value_changed"]
[connection signal="value_changed" from="ParameterContainer/PeriodSpinBox" to="." method="_on_PeriodSpinBox_value_changed"]
[connection signal="value_changed" from="ParameterContainer/PersistenceSpinBox" to="." method="_on_PersistenceSpinBox_value_changed"]
[connection signal="value_changed" from="ParameterContainer/OctavesSpinBox" to="." method="_on_OctavesSpinBox_value_changed"]
[connection signal="value_changed" from="ClipContainer/MinClipSpinBox" to="." method="_on_MinClipSpinBox_value_changed"]
[connection signal="value_changed" from="ClipContainer/MaxClipSpinBox" to="." method="_on_MaxClipSpinBox_value_changed"]
             GDST@   @            d  WEBPRIFFX  WEBPVP8LK  /?��|�!����m�!Y��]�HgVUk��Գ���ڶm۶m�\�w!lt9��/�# Զ����Gqy�<& �	H���PE�s6�坄���������}G��T�|��L�F��N�%o!���:�8o��x�K
�e\��<�h��4xH����E������I� �2(��-����%<r�p���?��;]ӯ��ٟ��,��lE���Ip�'a{#�h>��=w���������xT<F���8C#g�n�c.�z��뼎۟;{\m%#9��SY�7E `d���ؘ`+Md�7��\��]�{�Y��T.$3A$$�g��<d1�Aj�Uڸ���7<��~E��ݼ� ��W0J�y%�
��=�PH*ލ����&?i^IוG��l��
�� ;Cj��Y��� yɨ��
 ��z�|�;=���7Go�\�X�DD��iI�t�&�`�Q��_}>��r�?I-)(ZA�N��AIX[QE)T� Jj�Cy%c2:����k�z�ϫ/kOr%� �#K"���J�6��Z�-J�FB�6;�O7K  ��7�w�����%q��2�
�I�Bc�i8B +9�ʆW�,F����(�`�{�?#~i^���\���I	��(���\A��h�r�
�d��%a�h�GG�م�u����~e~aL�+�,����
���svN���Y{'�0'y�V�LI8�ѐ�C�u�=��{����aZ�-G���{���Ur4��$¸�!B�9��:��i�������P�"@.C0�!#�H�B�z�I�J�+��h�a�%!��F��)�����~N[R�%X�¨� ��<�t2J����\;�u����kw�# ��6���n��ό�}͜ ��z{��#�y�fJ`�H��d�(V�Z�T����!�
h���s�����d����
V�ф	�"�Q��pW8J�7I��] J��ѰNt6� ���%4��`�i	gF�l r�A�����%��w����U (�kI�q�Z���ϡ�Q�YH�S�h� �#��ᒤ����2XA��:��H���-�J�bOxG������V{
��X+�(xb�P8�U6���D@nI*9I9���S���'�`���� @BE�D�8̚�2�E��шS � ��0����`��1*kKp0jY   Σ\1�� ���ҕ@C
9e�Ԑ[Op�I���"X����F#B.�,��9 �Ss8wF�I�N�Z�]0����j{Fc�E-�(0�ZΈ,�%����b�B�S���8^O��5&� ������qS�*1�I��;
�u� ƌ��ʵ�w0�.ܣ��r�OE�!aX��4�6�V� 	A�
¤йa9��Mz���8m�0-���=��<u)�f2 Do�(�^$!	EDV���D��PHz���f;������<�E �V*�B �	�Y؁E\	�xe�B┨��Y#-!F2
ֈɔJ�9yJ`8/ 
�P�ie�,lA54�ȄY8��'��SN&�d,*��9V���5y�#�	mq�B&��p��  �h54�r".5����ZB��P�]� �L{��1��X[�L�L��z%*X��kP��u����we��y[B�?��wic�(���q�X�,KQ�s-�(0;�/�.Y��`��=���rG`�Yh���l2s�' ���k-"��`Akh�h�tc��v�x�<�6S:�A&��m(���9�~  ��=��:��Fn ���PQ�L �i�XI.����D�J�nC���2HN2*�i2 ��?�V���
R-�rm��9�pf�h��#�蔐��
�K��X�ނ�]�����((�E@8��v��t�b�E�2�HQZ7�<f�r#ڻ�\I���LN�Jx�p���I�A ��+��
	̰ф��y�̠2�L�r��p'�3I��$%��3���׬E�I�p�J�3/1�Z��d�	��ú$�A�B
�'��� XMb��g~�|��M΢��ZrD�aV�%�Q���(0�XLA�)��1G'��}���,���;�2�����Tg�EI��3�Z�� �H�#f'��Z��8���p�J���s��ͅ�� Ԋ��K�C#�8G �٥�ġ���(�+���;
N���EC9��z�{�wBx'�l!��U�rB1^��:�����΢֤���ld@#R!Rx����(�����}�NrA���Ln@e AQ��fI)7Yh�5���h��^�U�:���`����FA�(V����L��Z�=G��Z/��Pۉ��}�����L�5��PA+��v&@*�so/h
f%�K�Q�8����'/�I�&|��I#d�Ґ-�d��-'1$lZ�������EYX&B�����������x����V��QHbi�w�f9�fY5eV���L��'7x��|�^5��	�	�<�!@0Ѱ��n!V$6+C���j���;:��*�A����+�FR��)W�;V�J����~�U��@~۞ˢ��F��`6	V�V¸L%� ��5��g5��^񷼿,ͧR+�5i�G�=Q[C$�
��[�d�pIA� ߟi��_[�4�!.'XtpV*q'�����r�r�#<SJ��뻁�����Z�:q��������\�&w	'�q�#+�����^�O��{�d<-��EЈ�֬W��
)

��닀��1ןQ7Ϝ��B�r5�l�X�)��� o��6\�+ʕN
Q&\K��ED�46�N�xs?j�s�\��T�%MTI-� �^���u���߹3�[4xZ��� [remap]

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

path="res://OpenSimplexNoise_Viewer.gdc"
              �PNG

   IHDR   @   @    `�U  hIDATx���[�myz���8�1�<�9�a��fuw�z��`6�x�(�.V5���H#R�"�!ӈ��; ����W��\�z
��������:��s����ݝSAt��/�x����~��������N���������:T	ϓ����?u�G��fקw���J��Ƒ�Za���֝N���yq����ŗ�_����@`����nJ{_[y)Wϓ��ٳ�O?���_���������V(���W���4*#�J�r��(l�W����݇�}�����ɳ��Fjh+W�\y�V�%vZ}\Ʉ���TV
ݼ��_<{��o^�� �<���nV	����j�G:K�X�2�٫T��'�X[�y`x̿��;g?�_}v��/��xl(hu���K�>X���(UhE&z6BGƳ���~��Ob��<;-l�l�xO�8tl��*��2��J=�@_���Ri��c��ߚ}��� ���^��&r�F�;�iTJ�J(sli �[�U)����\j�3��N��8����8<�f����F���VI$"=[��D��X��#{L��Y������,=��8��?����c�K#�kC��X�����v�*�B�o�	'��l�b�|��?����@���lz��ЁJ�Xf(҉��Ae�P+R��5Z��2�b�����;�N-��O���[O_��w����626�����^,��T�}_5�:щ���֭O�[��s��}��g?�����@!�^�ЉNaoc�S{e�r`j�ﱝ�G�����Y[ZX��r}����g���]���`F���ޭ	��V>q%�	=�WZ+UJc�N�c�J�
U�vj�[�r��J�l���?����ӭ�Dcm)0t�5���2G"�O��>�q�N�@OO"S�T��t{�X+����??� ���4p�V&��:��2��jwr�C�Xi�P�E2��K�[��Nߍ+�D)��D�N>������|�T.�9�Le^Z�wy�/���Be摑�#K;�F��J�S�d�݊������N�������򣕵��Dg$3p`hko,V9)T7��>Q;�x,�t(��F��J�XO�C)����dz��kp�wf����-��yh�okmlj��N.�PI�j�U����u���:�9PX92���s�w/� :�<��k���y ���B�V�rwR�����$b���i���$
}�С����1J�SϿ =��l�X9V�H�*���ΝK[FFL��"��EcD��jS��:�7��Z�0@<��݉dJ�Hkd��J+Q�S��R�c���J��P,����Z�V��%vcC����j��7����Ӊ;��P�����H5^��ܺK�Z���H%��Tޗw �[�U�#t�g,[x�R����O���=@4��J�luzR��F*��݈YY�m5�����V(TKm-�V�;6�X��
+������T�ј�x%116QZ虘�܊k5^��zzJ��@�����ab�x��NO�����X
��lgC[�ā�+w���t�O����;���J��kk=�Z����Ne�D�ҭ���Z��D�R��V�rH�ɵJ������J,ҳ��D�"[�J,��x�P�t�'�������Xk=�ȭ���C3��5�U��������.�o�J���il�R[�CO�*{�jK��k+�+{{���7jC,�o_�C���V+�j�<��*�R
%*2�Z�
Ľ�֢��!������Z��+���ׄ�ժ� �=}c�n���]�jwh��Fl,(�֎��y�o-�ȴ
��P%�[K�FZ��޼H��vB��ȁ��c�����@!v��1�J��z&����^���Iг��W(
TƦBǶ�o�"A����߁܍�}_��	e�2�P����:�N�SWB�H`��֡޽P�����KWo���yi�Q˽��[��v��X��TZ��LO���}b�������S���Z���5��p{����v��*K}�tzb�ֵV*������i�
K=�7��J_���S�\y���*�*k+�#�����4ZY)d�j���z�;7b������O�R/�q��jd
}}K��ҝB(p��W�g�S~�����ʝ�Wzv^�-evJc�7�&F�����#��K��@�'�F�D�ojo)s(�U�IO<��vm%�z[��q�^㵝r������X'��9��H�ԕ�L��Yy#td`(P���q�ā��+�c�>��{�𼛯�6Z���R��H�H'��
��ҍ�D�ڭ;��ʝco<�@��Zi(84�(]�ҩ�?x����yh�
�=t�R�;6�5b��Fn�4���bC����\ ��HuZ�����Vs� ��g[����}G)U:C+�@��^�1�:�؉m�k��=6��Ul��tB�L��d?�.��y7��5j����
�F���X�dN<6*%r��Vjt?�"Kk�7��2��{ǁ�@y�s?��?�wc/����Jl�2���O]ɄNLd���f��ƥ�#����R#��'�"��;��&&V�>�=��ߜp��k�S屮P:RXx!��G�z:{��+�H`�Xk`�6u`a'�w���������?J��a��J`�����K�c���_���Ρc�B#�N�o$Ԫ�u�j��2}��@h�X�������:<�Hgm��@���P�'QXb/�Y��Z���Pr��+C}���ȡNpG��=�3�?�(����,���(7Z����B�ԓ�M�|�7���S�}��"�D���P�������8��/������ΧjC}7v��v�W�,u��ȝK��֍F*��zdhg���c���韻�}<�_8�O��v^	ur}[76��-�k���đ[��;�؍;c7�����N,\۹5U��������ͧ�6�OwR�K�.%��k��F*ƭ[�WB;��V��qi�Q�,\޻-{����|�_z������P(6+j�V$ш��,%�q)�Ty t$�J�*�J[[�^$O��S�̧���=c���#[��{�&���+��F_d��;v�b�����x��_Ԫ}v�_�����i��=�%���
wB[}c���k-B��{9	Tg��_�����_~�o=[024��LU:w����^e����K���S�V����7��y�x�W��g��Dg%č+{���N�ӿw�K��n�{��N��b����~��俞}�<|6<��Y{me�@`�z`(0ӓJ�46V�����]?���?Df��/���烏F�Cw
{=[��@���M�F{/MG���u�%�f��7~k�������Z;��^+s��@��HLd����Ͽ��~��7�f����f�����N�����"8<�ݞ}��.���s��G��Y5��F���R`~w19�\��?���w�q�g������+���    IEND�B`�               ECFG
      application/config/name          OpenSimplexNoise Viewer    application/config/descriptionx      m   This is a sample project which allows the user to tweak
different parameters of an OpenSimplex noise texture.      application/run/main_scene,      "   res://OpenSimplexNoise_Viewer.tscn     application/config/icon         res://icon.png     display/window/dpi/allow_hidpi            display/window/stretch/mode         2d     display/window/stretch/aspect         expand  $   rendering/quality/driver/driver_name         GLES2   %   rendering/vram_compression/import_etc         &   rendering/vram_compression/import_etc2                       