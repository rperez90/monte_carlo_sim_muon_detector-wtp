#ifndef SC8DataStruc_h
#define SC8DataStruc_h 1

struct SC8Particle {
   int pid;
   int trackid;
   double px;
   double py;
   double pz;
   double ma;
   double x;
   double y;
   double z;
   double steplength;
   double edep;
};

struct SC8edep {
  double SBAR[40];
  double TRAY[4];
//  float mEdepWater;
//  float mEdepWall;
//  float mLengthWater;
//  float mLengthWall; 

};

#endif
