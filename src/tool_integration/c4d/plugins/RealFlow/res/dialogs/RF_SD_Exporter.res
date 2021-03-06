// C4D-DialogResource

DIALOG RF_SD_EXPORTER
{
  NAME RFSDExporter;
  FIT_H; FIT_V; SCALE_V; SCALE_H;
  
  GROUP SD_EXP_SETUP
  {
	NAME SD_EXP_SETUP;
	FIT_H; FIT_V; SCALE_V; SCALE_H;
	COLUMNS 1;
	
	GROUP
	{
		COLUMNS 2;
		FIT_H; SCALE_H;
		
		STATICTEXT {NAME SD_EXP_FILE; SIZE -65,10;}
		FILENAME SD_EXP_FILE {SAVE; SIZE 500,10; FIT_H; SCALE_H;}
    }
  	GROUP
	{
		COLUMNS 2;
	
		STATICTEXT {NAME SD_EXP_START; SIZE -65,10;}
		EDITNUMBERARROWS SD_EXP_START {SIZE -20, -10;}

		STATICTEXT {NAME SD_EXP_END;}
		EDITNUMBERARROWS SD_EXP_END {}

		STATICTEXT {NAME SD_EXP_INC;}
		EDITNUMBERARROWS SD_EXP_INC {}

		STATICTEXT {NAME SD_EXP_SCALE;}
		EDITNUMBERARROWS SD_EXP_SCALE {}
		
		STATICTEXT {NAME SD_EXP_ADDCAM;}
		CHECKBOX SD_EXP_ADDCAM {}
	}
	GROUP
	{
		COLUMNS 2;
	 	
		STATICTEXT {NAME SD_EXP_CAM; SIZE -65,10;}
		COMBOBOX SD_EXP_CAM
		{
			SIZE -100,10;
			CHILDS 
			{
				// comes from the code
			}
		}
	}
  
	GROUP 
	{
		COLUMNS 3;
		FIT_H; FIT_V; SCALE_V; SCALE_H;
		SIZE -500,-300;

		STATICTEXT { NAME SD_EXP_OBJ_TITLE; };
		STATICTEXT {};
		STATICTEXT { NAME SD_EXP_SDOBJ_TITLE; };

		LISTVIEW SD_EXP_OBJECTS { FIT_H; FIT_V; SCALE_V; SCALE_H; };
		GROUP
		{
			CENTER_H; CENTER_V;
			COLUMNS 1;
		
			BUTTON SD_EXP_ADDALLOBJ { NAME SD_EXP_ADDALLOBJ; }
			BUTTON SD_EXP_ADDOBJ { NAME SD_EXP_ADDOBJ; }
			STATICTEXT {};
			BUTTON SD_EXP_REMOVEOBJ { NAME SD_EXP_REMOVEOBJ; }
			BUTTON SD_EXP_REMOVEALLOBJ { NAME SD_EXP_REMOVEALLOBJ; }
		}
		LISTVIEW SD_EXP_SDOBJECTS { FIT_H; FIT_V; SCALE_V; SCALE_H; };

		GROUP {
			COLUMNS 2;

			STATICTEXT { NAME SD_EXP_ADDMODE; };
			COMBOBOX SD_EXP_ADDMODE
			{
				CHILDS 
				{
					SD_EXP_MODE_MATRIX, SD_EXP_MODE_MATRIX;
					SD_EXP_MODE_VERTEX, SD_EXP_MODE_VERTEX;
				}
			}
		}
		STATICTEXT {};
		GROUP {
			COLUMNS 2;

			STATICTEXT { NAME SD_EXP_SETMODE; };
			COMBOBOX SD_EXP_SETMODE
			{
				CHILDS 
				{
					SD_EXP_MODE_MATRIX, SD_EXP_MODE_MATRIX;
					SD_EXP_MODE_VERTEX, SD_EXP_MODE_VERTEX;
				}
			}
		}
	}
  
	STATICTEXT SD_EXP_INFO {};
	GROUP 
	{  
		CENTER_H;
		COLUMNS 2;
	
		BUTTON SD_EXP_BUTTON {NAME SD_EXP_BUTTON; SIZE -50,-10;}
		BUTTON SD_EXP_CANCEL {NAME SD_EXP_CANCEL; SIZE -50,-10;}
	}
  }
}
