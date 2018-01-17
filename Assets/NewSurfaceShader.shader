Shader "Custom/NewSurfaceShader" 
	{
		//-------------------------------【属性】-----------------------------------------  
		Properties
		{
			_IlluminCol("自发光(RGB)",Color)=(1,1,1,1)
			_MainTex("基础纹理(RGB)", 2D) = "white" {}
			_BlendTex("混合纹理(RGBA) ", 2D) = "white" {}
		}

			//--------------------------------【子着色器】--------------------------------  
			SubShader
		{
			Cull  Front
			Pass
			
		{
			//SetTexture[_MainTex]{ combine texture }
			SetTexture[_BlendTex]{
			constantColor[_IlluminCol]
			combine texture * constant }
		}
		}
	}

