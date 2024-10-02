-- AlterTable
ALTER TABLE "backUpRawData" ADD COLUMN     "Brand" TEXT;

-- CreateTable
CREATE TABLE "rawData" (
    "id" SERIAL NOT NULL,
    "Country" TEXT,
    "Brand" TEXT,
    "Handler" TEXT,

    CONSTRAINT "rawData_pkey" PRIMARY KEY ("id")
);
