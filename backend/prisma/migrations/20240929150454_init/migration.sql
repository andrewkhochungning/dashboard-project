/*
  Warnings:

  - You are about to drop the column `Brand` on the `backUpRawData` table. All the data in the column will be lost.
  - You are about to drop the column `Country` on the `backUpRawData` table. All the data in the column will be lost.
  - You are about to drop the column `Handler` on the `backUpRawData` table. All the data in the column will be lost.
  - You are about to drop the column `Brand` on the `rawData` table. All the data in the column will be lost.
  - You are about to drop the column `Country` on the `rawData` table. All the data in the column will be lost.
  - You are about to drop the column `Handler` on the `rawData` table. All the data in the column will be lost.
  - Added the required column `assignee` to the `backUpRawData` table without a default value. This is not possible if the table is not empty.
  - Added the required column `created` to the `backUpRawData` table without a default value. This is not possible if the table is not empty.
  - Added the required column `issues_key` to the `backUpRawData` table without a default value. This is not possible if the table is not empty.
  - Added the required column `issues_type` to the `backUpRawData` table without a default value. This is not possible if the table is not empty.
  - Added the required column `last_view` to the `backUpRawData` table without a default value. This is not possible if the table is not empty.
  - Added the required column `priority` to the `backUpRawData` table without a default value. This is not possible if the table is not empty.
  - Added the required column `project_key` to the `backUpRawData` table without a default value. This is not possible if the table is not empty.
  - Added the required column `reporter` to the `backUpRawData` table without a default value. This is not possible if the table is not empty.
  - Added the required column `reporter_id` to the `backUpRawData` table without a default value. This is not possible if the table is not empty.
  - Added the required column `resolved` to the `backUpRawData` table without a default value. This is not possible if the table is not empty.
  - Added the required column `status` to the `backUpRawData` table without a default value. This is not possible if the table is not empty.
  - Added the required column `summary` to the `backUpRawData` table without a default value. This is not possible if the table is not empty.
  - Added the required column `updated` to the `backUpRawData` table without a default value. This is not possible if the table is not empty.
  - Added the required column `assignee` to the `rawData` table without a default value. This is not possible if the table is not empty.
  - Added the required column `created` to the `rawData` table without a default value. This is not possible if the table is not empty.
  - Added the required column `issues_key` to the `rawData` table without a default value. This is not possible if the table is not empty.
  - Added the required column `issues_type` to the `rawData` table without a default value. This is not possible if the table is not empty.
  - Added the required column `last_view` to the `rawData` table without a default value. This is not possible if the table is not empty.
  - Added the required column `priority` to the `rawData` table without a default value. This is not possible if the table is not empty.
  - Added the required column `project_key` to the `rawData` table without a default value. This is not possible if the table is not empty.
  - Added the required column `reporter` to the `rawData` table without a default value. This is not possible if the table is not empty.
  - Added the required column `reporter_id` to the `rawData` table without a default value. This is not possible if the table is not empty.
  - Added the required column `resolved` to the `rawData` table without a default value. This is not possible if the table is not empty.
  - Added the required column `status` to the `rawData` table without a default value. This is not possible if the table is not empty.
  - Added the required column `summary` to the `rawData` table without a default value. This is not possible if the table is not empty.
  - Added the required column `updated` to the `rawData` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "backUpRawData" DROP COLUMN "Brand",
DROP COLUMN "Country",
DROP COLUMN "Handler",
ADD COLUMN     "assignee" TEXT NOT NULL,
ADD COLUMN     "brand_list" TEXT,
ADD COLUMN     "created" TEXT NOT NULL,
ADD COLUMN     "expected_live" TEXT,
ADD COLUMN     "first_response" TEXT,
ADD COLUMN     "investigation_type" TEXT,
ADD COLUMN     "issues_key" TEXT NOT NULL,
ADD COLUMN     "issues_type" TEXT NOT NULL,
ADD COLUMN     "last_view" TEXT NOT NULL,
ADD COLUMN     "organizations" TEXT,
ADD COLUMN     "priority" TEXT NOT NULL,
ADD COLUMN     "project_key" TEXT NOT NULL,
ADD COLUMN     "reporter" TEXT NOT NULL,
ADD COLUMN     "reporter_id" TEXT NOT NULL,
ADD COLUMN     "resolved" TEXT NOT NULL,
ADD COLUMN     "status" TEXT NOT NULL,
ADD COLUMN     "status_category" TEXT,
ADD COLUMN     "store_list" TEXT,
ADD COLUMN     "summary" TEXT NOT NULL,
ADD COLUMN     "updated" TEXT NOT NULL;

-- AlterTable
ALTER TABLE "rawData" DROP COLUMN "Brand",
DROP COLUMN "Country",
DROP COLUMN "Handler",
ADD COLUMN     "assignee" TEXT NOT NULL,
ADD COLUMN     "brand_list" TEXT,
ADD COLUMN     "created" TEXT NOT NULL,
ADD COLUMN     "expected_live" TEXT,
ADD COLUMN     "first_response" TEXT,
ADD COLUMN     "investigation_type" TEXT,
ADD COLUMN     "issues_key" TEXT NOT NULL,
ADD COLUMN     "issues_type" TEXT NOT NULL,
ADD COLUMN     "last_view" TEXT NOT NULL,
ADD COLUMN     "organizations" TEXT,
ADD COLUMN     "priority" TEXT NOT NULL,
ADD COLUMN     "project_key" TEXT NOT NULL,
ADD COLUMN     "reporter" TEXT NOT NULL,
ADD COLUMN     "reporter_id" TEXT NOT NULL,
ADD COLUMN     "resolved" TEXT NOT NULL,
ADD COLUMN     "status" TEXT NOT NULL,
ADD COLUMN     "status_category" TEXT,
ADD COLUMN     "store_list" TEXT,
ADD COLUMN     "summary" TEXT NOT NULL,
ADD COLUMN     "updated" TEXT NOT NULL;
