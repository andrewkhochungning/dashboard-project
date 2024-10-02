-- CreateTable
CREATE TABLE "backUpRawData" (
    "id" SERIAL NOT NULL,
    "Country" TEXT,
    "Handler" TEXT,
    "version" INTEGER NOT NULL,

    CONSTRAINT "backUpRawData_pkey" PRIMARY KEY ("id")
);
