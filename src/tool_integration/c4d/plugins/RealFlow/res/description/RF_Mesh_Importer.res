CONTAINER RF_MESH_IMPORTER
{
	NAME RFMeshImporter;
	INCLUDE Obase;

	GROUP M_IMP_SETUP
	{
		DEFAULT 1;
	
		FILENAME M_IMP_FILE_PATH {}
		STATICTEXT M_IMP_NAME {ANIM OFF;}
		LONG M_IMP_PADDING {MINSLIDER 0; MAXSLIDER 10;}
		LONG M_IMP_CACHE_MODE
		{
			CYCLE
			{
				M_IMP_CURRENT_FRAME;
				M_IMP_CORE_FRAME;
				M_IMP_ALL_FRAME;
			}
		}
		LONG M_IMP_CACHE_CORE {}
		LONG M_IMP_START_FRAME {}
		LONG M_IMP_END_FRAME {}
		LONG M_IMP_OFFSET {}
		REAL M_IMP_LOD {MINSLIDER 0.0; MAXSLIDER 100.0;}
		REAL M_IMP_SCALE {MIN 0; STEP 0.1;}
		REAL M_IMP_BLUR {}
		BOOL M_IMP_LOCK_CURRENT {}
		BOOL M_IMP_INVERT_SEQUENCE {}
      SEPARATOR {LINE;}
      BOOL M_IMP_SHARE_ASSETS {}
	}

	GROUP M_IMP_GRP_BIN_CHANNELS
	{
      COLUMNS 3;

      BOOL M_IMP_CHAN_VELOCITY {}
      REAL M_IMP_CHAN_VELOCITY_SCALE {MIN 0.0;}
      BOOL M_IMP_CHAN_VELOCITY_MAG {}

      BOOL M_IMP_CHAN_TEXTURE {}
      STATICTEXT {}
      STATICTEXT {}

      BOOL M_IMP_CHAN_WEIGHT {}
      STATICTEXT {}
      STATICTEXT {}
	}

	GROUP M_IMP_GRP_MD_CHANNELS
	{
		GROUP {
			COLUMNS 3;

			BOOL M_IMP_MDVELOCITY {}
			REAL M_IMP_MDVEL_SCALE {} 
			BOOL M_IMP_MDVEL_LEN {}
			BOOL M_IMP_MDFORCE {}
			REAL M_IMP_MDFORCE_SCALE {} 
			BOOL M_IMP_MDFORCE_LEN {}
			BOOL M_IMP_MDNORMAL {}
			REAL M_IMP_MDNORM_SCALE {} 
			BOOL M_IMP_MDNORM_LEN {}
			BOOL M_IMP_MDVORTICITY {}
			REAL M_IMP_MDVORT_SCALE {} 
			BOOL M_IMP_MDVORT_LEN {}
		}
		GROUP {
			COLUMNS 2;

			BOOL M_IMP_MDNEIGHBORS {}
			REAL M_IMP_MDNEIGH_SCALE {} 
			BOOL M_IMP_MDAGE {}
			REAL M_IMP_MDAGE_SCALE {} 
			BOOL M_IMP_MDISOLATION {}
			REAL M_IMP_MDISO_SCALE {} 
			BOOL M_IMP_MDVISCOSITY {}
			REAL M_IMP_MDVISC_SCALE {} 
			BOOL M_IMP_MDDENSITY {}
			REAL M_IMP_MDDENS_SCALE {} 
			BOOL M_IMP_MDPRESSURE {}
			REAL M_IMP_MDPRESS_SCALE {} 
			BOOL M_IMP_MDMASS {}
			REAL M_IMP_MDMASS_SCALE {} 
			BOOL M_IMP_MDTEMPERATURE {}
			REAL M_IMP_MDTEMP_SCALE {} 
			BOOL M_IMP_MDCURVATURE {}
			REAL M_IMP_MDCURV_SCALE {} 
			BOOL M_IMP_MDIDENTITY {}
			STATICTEXT M_IMP_MDID_SCALE {} 
		}
	}
	GROUP M_IMP_GRP_PIVOT
	{
		VECTOR M_IMP_PIVOT {}
	}
}
