/*
  Warnings:

  - The primary key for the `backUpRawData` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - You are about to drop the column `brand_list` on the `backUpRawData` table. All the data in the column will be lost.
  - You are about to drop the column `created` on the `backUpRawData` table. All the data in the column will be lost.
  - You are about to drop the column `expected_live` on the `backUpRawData` table. All the data in the column will be lost.
  - You are about to drop the column `first_response` on the `backUpRawData` table. All the data in the column will be lost.
  - You are about to drop the column `investigation_type` on the `backUpRawData` table. All the data in the column will be lost.
  - You are about to drop the column `issues_key` on the `backUpRawData` table. All the data in the column will be lost.
  - You are about to drop the column `last_view` on the `backUpRawData` table. All the data in the column will be lost.
  - You are about to drop the column `organizations` on the `backUpRawData` table. All the data in the column will be lost.
  - You are about to drop the column `priority` on the `backUpRawData` table. All the data in the column will be lost.
  - You are about to drop the column `project_key` on the `backUpRawData` table. All the data in the column will be lost.
  - You are about to drop the column `reporter_id` on the `backUpRawData` table. All the data in the column will be lost.
  - You are about to drop the column `resolved` on the `backUpRawData` table. All the data in the column will be lost.
  - You are about to drop the column `status_category` on the `backUpRawData` table. All the data in the column will be lost.
  - You are about to drop the column `store_list` on the `backUpRawData` table. All the data in the column will be lost.
  - You are about to drop the column `updated` on the `backUpRawData` table. All the data in the column will be lost.
  - The primary key for the `rawData` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - You are about to drop the column `issues_key` on the `rawData` table. All the data in the column will be lost.
  - Added the required column `expected_go_live` to the `backUpRawData` table without a default value. This is not possible if the table is not empty.
  - Added the required column `key` to the `backUpRawData` table without a default value. This is not possible if the table is not empty.
  - Added the required column `assignee` to the `rawData` table without a default value. This is not possible if the table is not empty.
  - Added the required column `expected_go_live` to the `rawData` table without a default value. This is not possible if the table is not empty.
  - Added the required column `key` to the `rawData` table without a default value. This is not possible if the table is not empty.
  - Added the required column `reporter` to the `rawData` table without a default value. This is not possible if the table is not empty.
  - Added the required column `status` to the `rawData` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "backUpRawData" DROP CONSTRAINT "backUpRawData_pkey",
DROP COLUMN "brand_list",
DROP COLUMN "created",
DROP COLUMN "expected_live",
DROP COLUMN "first_response",
DROP COLUMN "investigation_type",
DROP COLUMN "issues_key",
DROP COLUMN "last_view",
DROP COLUMN "organizations",
DROP COLUMN "priority",
DROP COLUMN "project_key",
DROP COLUMN "reporter_id",
DROP COLUMN "resolved",
DROP COLUMN "status_category",
DROP COLUMN "store_list",
DROP COLUMN "updated",
ADD COLUMN     "brand" TEXT,
ADD COLUMN     "country" TEXT,
ADD COLUMN     "created_date" TEXT,
ADD COLUMN     "date_of_first_response" TEXT,
ADD COLUMN     "days_since_last_comment" TEXT,
ADD COLUMN     "expected_go_live" TEXT NOT NULL,
ADD COLUMN     "key" TEXT NOT NULL,
ADD COLUMN     "organization" TEXT,
ADD COLUMN     "request_type" TEXT,
ADD COLUMN     "store" TEXT,
ADD COLUMN     "time_to_close_after_resolution" TEXT,
ADD COLUMN     "time_to_first_response" TEXT,
ADD COLUMN     "time_to_resolution" TEXT,
ADD COLUMN     "updated_date" TEXT,
ALTER COLUMN "id" DROP DEFAULT,
ALTER COLUMN "id" SET DATA TYPE TEXT,
ALTER COLUMN "issues_type" DROP NOT NULL,
ADD CONSTRAINT "backUpRawData_pkey" PRIMARY KEY ("id");
DROP SEQUENCE "backUpRawData_id_seq";

-- AlterTable
ALTER TABLE "rawData" DROP CONSTRAINT "rawData_pkey",
DROP COLUMN "issues_key",
ADD COLUMN     "assignee" TEXT NOT NULL,
ADD COLUMN     "brand" TEXT,
ADD COLUMN     "country" TEXT,
ADD COLUMN     "created_date" TEXT,
ADD COLUMN     "date_of_first_response" TEXT,
ADD COLUMN     "days_since_last_comment" TEXT,
ADD COLUMN     "expected_go_live" TEXT NOT NULL,
ADD COLUMN     "key" TEXT NOT NULL,
ADD COLUMN     "organization" TEXT,
ADD COLUMN     "reporter" TEXT NOT NULL,
ADD COLUMN     "request_type" TEXT,
ADD COLUMN     "status" TEXT NOT NULL,
ADD COLUMN     "store" TEXT,
ADD COLUMN     "time_to_close_after_resolution" TEXT,
ADD COLUMN     "time_to_first_response" TEXT,
ADD COLUMN     "time_to_resolution" TEXT,
ADD COLUMN     "updated_date" TEXT,
ALTER COLUMN "id" DROP DEFAULT,
ALTER COLUMN "id" SET DATA TYPE TEXT,
ALTER COLUMN "issues_type" DROP NOT NULL,
ADD CONSTRAINT "rawData_pkey" PRIMARY KEY ("id");
DROP SEQUENCE "rawData_id_seq";
